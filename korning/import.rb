# Use this file to import the sales information into the
# the database.
require 'csv'
require 'pry'
require "pg"

def db_connection
  begin
    connection = PG.connect(dbname: "korning")
    yield(connection)
  ensure
    connection.close
  end
end

data = CSV.readlines("sales.csv", headers: true)

data.each do |row|
  res_employee = row['employee']
  employee_name = res_employee.rpartition(' ').first
  employee_email = res_employee.rpartition(' ').last.gsub(/[()]/, "")
  res_customer = row['customer_and_account_no']
  customer_name = res_customer.rpartition(' ').first
  customer_account = res_customer.rpartition(' ').last.gsub(/[()]/, "")
  product_name = row['product_name']
  sale_date = row['sale_date']
  sale_amount = row['sale_amount'].gsub("$", "")
  units_sold = row['units_sold']
  invoice_no = row['invoice_no']
  invoice_frequency = row['invoice_frequency']

  db_connection do |conn|

    employee_exists = conn.exec("SELECT COUNT(*) FROM employees WHERE email = '#{employee_email}';")

    if employee_exists[0]['count'] == '0'
      result_employee = conn.exec_params("INSERT INTO employees (name, email)
                        VALUES ($1,$2) RETURNING id;",
                        [employee_name, employee_email])
    end

    customer_exists = conn.exec("SELECT COUNT(*) FROM customers WHERE name = '#{customer_name}';")

    if customer_exists[0]['count'] == '0'
      result_customer = conn.exec_params("INSERT INTO customers (name, account_no)
                        VALUES ($1, $2) RETURNING id;",
                        [customer_name, customer_account])
    end

    product_exists = conn.exec("SELECT COUNT(*) FROM products WHERE name = '#{product_name}';")

    if product_exists[0]['count'] == '0'
      result_products = conn.exec_params("INSERT INTO products (name)
                        VALUES ($1) RETURNING id;",
                        [product_name])
    end

    sale_exists = conn.exec("SELECT COUNT(*) FROM sales WHERE invoice_no = '#{invoice_no}';")

    if sale_exists[0]['count'] == '0'
      employees_id = conn.exec("SELECT id FROM employees WHERE name = '#{employee_name}';")
      employees_id = employees_id[0]['id']

      customers_id = conn.exec("SELECT id FROM customers WHERE name = '#{customer_name}';")
      customers_id = customers_id[0]['id']

      products_id = conn.exec("SELECT id FROM products WHERE name = '#{product_name}';")
      products_id = products_id[0]['id']

      conn.exec_params("INSERT INTO sales (employees_id, customers_id, products_id, sale_date, sale_amount, units_sold, invoice_no, invoice_freq)
                      VALUES ($1, $2, $3, $4, $5, $6, $7, $8);",
                      [employees_id, customers_id, products_id, sale_date, sale_amount, units_sold, invoice_no, invoice_frequency])
    end
  end
  # end of db_connection
end
# end of Data
