#Greeting for the user
puts "Welcome to Virtual Candy Machine!"

#Asking for user input and setting that value to the variable 'money'
puts "Please tell me how much money you have: $"
money = gets.chomp

#Convert the 'money' input into a float
money_convert = money.to_f

#Show user candy options with prices
puts "We have the following treats available:"
puts "A: $2.00 Kinder Egg"
puts "B: $1.00 Snickers"
puts "C: $0.75 Twix"
puts "D: $0.50 Reeses Cup"
puts "E: $0.25 Licorice"
puts "F: $0.05 A Gum Ball"

#Asking user to choose a candy option and setting that value to the variable 'option'
puts "Which option would you like?"
option = gets.chomp

#Converting 'option' value to uppercase 
option_convert = option.upcase 

#Checking that the user entered a valid choice
if option_convert == "A" || option_convert == "B" || option_convert == "C" ||
    option_convert == "D" ||option_convert == "E" ||option_convert == "F" 
    if option_convert == "A"
        if money_convert >= 2.00
            puts "Enjoy your Kinder Egg, here is $#{money_convert - 2.00} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    elsif option_convert == "B"
        if money_convert >= 1.00
            puts "Enjoy your Snickers, here is $#{money_convert - 1.00} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    elsif option_convert == "C"
        if money_convert >= 0.75
            puts "Enjoy your Twix, here is $#{(money_convert - 0.75).round(2)} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    elsif option_convert == "D"
        if money_convert >= 0.50
            puts "Enjoy your Reeses Cup, here is $#{(money_convert - 0.50).round(2)} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    elsif option_convert == "E"
        if money_convert >= 0.25
            puts "Enjoy your Licorice, here is $#{(money_convert - 0.25).round(2)} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    else
        if money_convert >= 0.05
            puts "Enjoy your Gum Ball, here is $#{(money_convert - 0.05).round(2)} in change"
        else
            puts "You don't have enough money. Please restart the Candy Machine"
        end
    end
else
    puts "You chose an invalid option :( Please restart the Candy Machine."
end 
