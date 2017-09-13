class CesarCipher
  #class method to avoid unnecessary instantiating
    def self.rotate (str,num)
      #arrays for chara scan
      alphabetLow = ("a".."z").to_a
      alphabetUp = ("A".."Z").to_a
      #lowercase and than uppercase character replacing with rotated characters
      second_step=str.tr(alphabetLow.join,alphabetLow.rotate(num).join)
      second_step.tr(alphabetUp.join,alphabetUp.rotate(num).join)
    end
end