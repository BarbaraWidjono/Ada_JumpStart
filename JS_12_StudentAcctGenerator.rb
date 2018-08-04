#Welcome the user to the program
puts "Welcome to the Student Account Generator!"

#Create empty arrays to store corresponding student info
student_names = Array.new
student_ids = Array.new
student_emails = Array.new 

#Ask user to input 5 student names and push into the student_names array
5.times do
    puts "Enter a students' first and last name:"
    student_name = gets.chomp.upcase
    student_names.push(student_name)
end

#Generate random student ID numbers from 111111 to 999999 and push those numbers into the student_id array
5.times do
    prng = Random.new
    student_id = prng.rand(111111..999999)
    student_ids.push(student_id)
end

#Creating empty array to store lastnames
lastname_array = Array.new

#This times loop will iterate through each students full name within the student_names array
array_index = 0

5.times do
    fullname = student_names[array_index]
    name_length = fullname.length

    #This while loop will iterate through each letter of a students full name, in order to locate the blank space that separates the first and last name
    name_index = 0
    while name_index < name_length
        if fullname[name_index] == " "
            blank_space_index = name_index
            name_index += 1
        else
            name_index += 1
        end
    end
    #Slicing out the student's last name from their full name and pushing into the lastname_array
    index_firstLetter_lastName = blank_space_index + 1
    lastname = fullname.slice(index_firstLetter_lastName..name_length)
    lastname_array.push(lastname)

    array_index += 1
end

#This times loop will generate student email addresses: (first initial)+(last name)+(last 3 digits of student ID)
generate_index = 0

5.times do
    first_initial = student_names[generate_index][0]
    generate_lastname = lastname_array[generate_index]
    digits = student_ids[generate_index].to_s
    slice_digits = digits.slice(3,3)
    
    student_email = "#{first_initial}#{generate_lastname}#{slice_digits}@adadevelopersacademy.org"
    generate_index += 1

    student_emails.push(student_email)
end

puts "****** RESULTS ******"

#Printing out student names, student IDs and email addresses in parallel
print_index = 0

while print_index < 5
    puts "Student Name: #{student_names[print_index]}"
    puts "Student ID: #{student_ids[print_index]}"
    puts "Student Email: #{student_emails[print_index]}"
    puts "-------------------"
    print_index += 1
end