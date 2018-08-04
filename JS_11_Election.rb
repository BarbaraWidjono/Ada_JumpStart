#Greeting and introduction
puts "Welcome to my election voting program!"
puts "Election candidates are: Totoro, Ponyo and Kipper"

#User enters number of voters and that value is assigned to the variable num_votes
puts "How many voters will be participating?"
num_votes = gets.chomp

#Convert num_votes from a string into an integer
num_votes_convert = num_votes.to_i

#Assigning inital vote count for each candidate (cannot be placed within the while loop, as the initial vote count would restart at a value of zero with each iteration)
totoro = 0
ponyo = 0
kipper = 0

#Assign an initial count value to tally votes
count = 1

#Loop to collect votes 
while count <= num_votes_convert
    puts "Vote ##{count}: "
    vote = gets.chomp.downcase
    
    #Checking for valid vote entry (if vote valid the count is incremented by 1, if not valid the count is not incremented and the user is prompted to re-enter the vote at the current iteration)
    if vote == "totoro" || vote == "ponyo" || vote == "kipper"
        if vote == "totoro"
            totoro += 1
        elsif vote == "ponyo"
            ponyo += 1
        else
            kipper += 1
        end
        count += 1
    else
        puts "invalid"
    end
end

puts "****** RESULTS ******"
puts " "
puts "VOTE SUMMARY"

#Handling grammar for 'vote' or 'votes'
if totoro == 1
    puts "  Totoro: #{totoro} vote"
else
    puts "  Totoro: #{totoro} votes"
end

if ponyo == 1
    puts "  Ponyo: #{ponyo} vote"
else
    puts "  Ponyo: #{ponyo} votes"
end

if kipper == 1
    puts "  Kipper: #{kipper} vote"
else
    puts "  Kipper: #{kipper} votes"
end

#Displaying winner and handling ties
puts "WINNER"

if totoro > ponyo && totoro > kipper
    puts "  Totoro!"
elsif ponyo > totoro && ponyo > kipper
    puts "  Ponyo!"
elsif kipper > totoro && kipper > ponyo
    puts "  Kipper!"
elsif totoro == ponyo && totoro > kipper || totoro == kipper && totoro > ponyo
    if totoro == ponyo
        puts "  Totoro & Ponyo!"
    else
        puts "  Totoro & Kipper!"
    end
elsif kipper == ponyo && kipper > totoro
    puts "  Kipper & Ponyo!"
end