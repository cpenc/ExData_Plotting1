my_input_file <- file("household_power_consumption.txt","r")                       #Reading input file in read mode
my_output_file <- file("household_power_consumption_1st_and_2nd_Feb_2007.txt","w") #Reading input file in write mode

x <- readLines(my_input_file, n=1) #reading header
writeLines(x, my_output_file) #write header to output file

ChucksOfLines <- 100000 # To read file in chucks of 1000000 lines
while(length(x)) {
    Our_line_Numbers <- grep("^[1,2]/2/2007", x) #greping only our dates
    if (length(Our_line_Numbers)) {
	writeLines(x[Our_line_Numbers], my_output_file) #Write data for our dates into output file
	}
    x <- readLines(my_input_file, n=ChucksOfLines) #Read the next chuck
}
close(my_input_file)                       #Close input file
close(my_output_file)                      #Close output file

rm(my_input_file,my_output_file,x,ChucksOfLines,Our_line_Numbers) #cleaning variables from memory

