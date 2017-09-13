#include file with class
require_relative "../cesar_cipher"
i=0
#check input 
#if not matching desired format and range prompt input again with error msg
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

#output result 
print "Your result is: "
print CesarCipher.rotate(inputText,inputKey)
puts