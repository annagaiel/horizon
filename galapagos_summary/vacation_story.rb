leaving_date = "February 10th"
returning_date = "February 20th"
number_of_iguanas = 4
favorite_beach = "Moon Beach"
stayed_hotel = "Palace"
number_of_tortoises = 10

summary = <<-vacation
We left #{leaving_date} for The Galapagos Islands and stayed at the #{stayed_hotel} hotel.
During the trip I saw over #{number_of_iguanas + number_of_tortoises} animals.
My favorite beach during the trip was #{favorite_beach}.
After an amazing trip we returned on #{returning_date}. Can't wait to go back!
vacation
puts summary
