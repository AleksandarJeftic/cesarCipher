class CesarCipher
	def self.rotate (str,num)
	
		alphabetLow = ("a".."z").to_a
		alphabetUp = ("A".."Z").to_a
		second_step=str.tr(alphabetLow.join,alphabetLow.rotate(num).join)
		second_step.tr(alphabetUp.join,alphabetUp.rotate(num).join)

	end
end