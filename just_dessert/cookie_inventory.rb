class CookieInventory
  attr_reader :inventory

  def initialize
    @inventory = {
      peanut_butter:0,
      chocolate_chip:0,
      sugar:0
    }
  end

  def cook_batch!(cookie_type, number_of_cookies)
    cookie_type = cookie_type.to_sym
    if @inventory[cookie_type].nil?
      "Error: We don't bake #{cookie_type.to_s}."
    else
      @inventory[cookie_type] += number_of_cookies
      "Inventory's #{cookie_type.to_s} cookies now has #{@inventory[cookie_type]}"
    end
  end

  def sell!(cookie_type, number_of_cookies)
    cookie_type = cookie_type.to_sym
    if @inventory[cookie_type].nil?
      "Error: We don't sell #{cookie_type.to_s}."
    else
      if @inventory[cookie_type] >= number_of_cookies
        @inventory[cookie_type] -= number_of_cookies
        "We sold #{number_of_cookies} of #{cookie_type.to_s}"
      else
        "Sold Out!, we can only sell #{@inventory[cookie_type] } of #{cookie_type.to_s}"
      end
    end
  end
end

cookie_inventory = CookieInventory.new
puts cookie_inventory.cook_batch!("sugar", 12)
puts cookie_inventory.inventory
puts cookie_inventory.cook_batch!("fudge", 12)
puts cookie_inventory.sell!("sugar", 13)
