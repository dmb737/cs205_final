# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called best_pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way best_pokemon.dat is formatted.

BEGIN {FS="\t"}
#the \t tabulates the data and allows awk to properlly carry out the function given to it in the command line. 

        {HPsum+=$6; Attacksum+=$7}
#the HP sum is a varible that is set to the 6th column of the data and will sum up all of the values and this is also true for Attack sum which will add up all the values in the 7th row of data in the script. 

# the end of the script is what awk will carry out and displays what will be printed out in the terminal shell. first we have both the header and footer labled here and will just be repreented back out to give the same representation. the file name is set to FILENAME to give a proper output of what the data file is called
# the AVG. HP and AVG. Attack are respectivly columns 6 and 7 diveded by their natural count which is orginally 801 but i made it 800 since 801 includes words. this should give a proper average score of each column. 
END{  print "===== SUMMARY OF DATA FILE ====='
      print "File name: "  FILENAME; 
      print "Total Pokemon: " NR;
      Print "Avg. HP: "   $HPsum/800;
      Print "Avg. Attack: "   $Attacksum/800 
      Print "===== END SUMMARY ====="                    ;}

