i=0
#check input

while true

puts
	if i>0
		puts "Wrong Entry Please Try Again!"

		puts "Input Decipher key in ROT0-ROT26 format and text to decipher using white space between. Example (ROT2 SomeText)"
		input=gets.chop

	else
		puts "Input Decipher key in ROT0-ROT26 format and text to decipher using white space between. Example (ROT2 SomeText)"
		input=gets.chop
		i+=1
	end

 break if input.match(/\AROT([0-9]|1[0-9]|2[0-6]) /) 

end

	

#splitting input
inputArray=input.split(" ",2)

inputFirstPart= inputArray[0]

inputKey=inputFirstPart[3..4].to_i

inputText= inputArray[1]

#cipher method
def rotate (str,num)
	
	alphabetLow = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	alphabetUp = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
	second_step=str.tr(alphabetLow.join,alphabetLow.rotate(num).join)
	second_step.tr(alphabetUp.join,alphabetUp.rotate(num).join)

end
#output result 
print "Your result is: "
print rotate(inputText,inputKey)
puts





	











	





	

