# This line imports the data and saves it to a variable called "log_file" so it can be used in the code
log_file = open("um-server-01.txt")


# Declares a function called "sales_reports" that takes in the parameter "log_file"
def sales_reports(log_file):
    for line in log_file:  # Makes a for-loop that loops through each line of the input parameter
        # Removes annoying things at the end of a line when you use data from the imported file such as "\n" that end the line.
        line = line.rstrip()
        # declares day as the first three columns of the data file from the input parameter
        day = line[0:3]
        if day == "Mon":  # Creates an if-statement that checks if day is "Tue" *CHANGED TO "Mon"*
            # If the if statement find its condition to be true it will run this line and print that line
            print(line)


# This line runs the
sales_reports(log_file)
