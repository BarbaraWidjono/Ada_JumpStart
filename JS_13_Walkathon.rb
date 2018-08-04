#Welcome user to program
puts "Welcome to the Walk-A-Thon Tracker!"

#Ask user to input number of walkers
puts "Please enter the earning goal for this event: "
goal = gets.chomp.to_f

#Ask user to input amount earned per lap
puts "Please enter the amount earned per lap (per person): "
amount_per_lap = gets.chomp.to_f

#Ask user to input the number of walkers that participated
puts "Please enter the number of walkers that participated: "
num_of_walkers = gets.chomp.to_i

#Create hash to store data for all walkers (key-walker number, value-number of laps by that walker)
all_walkers = Hash.new

#Create hash to store data for all walkers (key-walker number, value-total money earned by that walker)
all_walkers_earnings = Hash.new

#Ask user to input walking data for each walker
puts "Please enter the number of laps completed by each person: "

walker_number = 1
while walker_number <= num_of_walkers
    puts "Walker ##{walker_number}: "
    num_of_laps = gets.chomp.to_f

    #Create a key/value pair that is added to the all_walkers hash. Where the walker_number is the key and the number of laps is the value. 
    all_walkers["#{walker_number}"] = num_of_laps
    walker_number += 1
end

#Print earnings for all walkers
puts "****** Earnings per walker ******"

#Iterating through hash data and printing values
all_walkers.each do |walkerNumber, numOfLaps|
    puts "Walker ##{walkerNumber}: #{(numOfLaps * amount_per_lap).round(2)}"

    #Inserting the calculated data into the all_walkers_earnings hash. Where the walkerNumber is the key and the amount earned by the walker is the value
    all_walkers_earnings["#{walkerNumber}"] = numOfLaps * amount_per_lap
end

#Displaying final results of walkathon
puts "****** Final Results ******"

#Determing which walker(s) made the most money

    #Creating an array (which is later sorted) to store earnings from all walkers
    all_earnings_array = Array.new

    #Taking all the values(earnings per walker) from the all_walkers_earnings hash and pushing into the all_earnings_array
    all_earnings_array = all_walkers_earnings.values

    #Storing the last value in the sorted all_earnings_array (the last value is the max amount earned by a walker)
    max_earned = all_earnings_array.sort!.last

    #Creating an array to store the walker(s) that made an amount equal to the max_earned
    highest_earners = Array.new

    #Iterating thorugh the all_walkers_earnings hash. If the value matches the max_earned, the key is then pushed into the highest_earners array.
    all_walkers_earnings.each do |walkerNumber,earning|
        if earning == max_earned
            highest_earners.push(walkerNumber)
        end
    end

    #Calculating the total amount of money raised
    total_raised = all_earnings_array.sum

puts "Highest Earning Walker(s): #{highest_earners}"
puts "Total Amount Earned from Walk-A-Thon: $#{total_raised.round(2)}"

#Determining if goal was met
if total_raised.round(2) >= goal
    puts "Goal Reached! Made an extra $#{(total_raised.round(2)) - goal}"
else 
    puts "Goal Not Reached. Need to make another $#{goal - (total_raised.round(2))}"
end

