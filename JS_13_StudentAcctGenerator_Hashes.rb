#Welcome the user to the program
puts "Welcome to the Student Account Generator!"

#Create an array to store all student data
all_data = Array.new

#Assigning a value to the start_loop variable, this will be used for the conditional statement in the while loop below. The while loop will never end unless the user selects option 3 to exit
start_loop = "entering_while_loop"

while start_loop == "entering_while_loop"
    puts "------------------------"
    puts "Option 1: Add record"
    puts "Option 2: Print records"
    puts "Option 3: Exit program"
    puts "Please choose an option:"
    option = gets.chomp.to_i

    if option == 1
        #Create an empty hash to contain data from a single student
        student_record = Hash.new

        #Saving the student's full name to the 'fullname' variable
        puts "Please enter the student's first and last name:"
        fullname = gets.chomp.upcase

            #Inserting a new key/value pair into the student_record hash
            student_record["Name"] = fullname

        #Generate a random student ID (from 111111 to 999999)
        prng = Random.new
        student_id = prng.rand(111111..999999)

            #Inserting a new key/value pair into the student_record hash
            student_record["Student ID"] = student_id.to_s

        #Generate components to student's email address: (first initial) + (last name) + (last 3 digits of student ID)
            #Saving the student's first initial
            first_initial = fullname[0]

            #Iterating through the student's full name to locate the blank space separating the first and last name
            letter_index = 0
            while letter_index < fullname.length
                if fullname[letter_index] == " "
                    blank_space_index = letter_index
                    letter_index += 1
                else
                    letter_index += 1
                end
            end

            #Slicing out the student's last name from their full name
            index_firstLetter_of_lastName = blank_space_index + 1
            fullname_length = fullname.length
            lastname = fullname.slice(index_firstLetter_of_lastName..fullname_length)

            #Slicing out the last 3 digits of the student's ID (slice only works for strings)
            student_id_string = student_id.to_s
            slice_student_id = student_id_string.slice(3,3)

            #Creating a student's email address
            student_email = "#{first_initial}#{lastname}#{slice_student_id}@adadevelopersacademy.org"

                #Inserting a new key/value pair into the student_record hash
                student_record["Email"] = student_email

        #All data for a single student(full name, ID, email) has been entered into a student_record hash. That hash is then pushed into the all_data array
        all_data.push(student_record)
        
    elsif option == 2
        if all_data.length == 0
            puts "No data exists in the student records"
        else
            puts all_data
        end
    elsif option == 3
        puts "Goodbye"
        break
    else
        puts "Invalid option. Try again."
    end
end