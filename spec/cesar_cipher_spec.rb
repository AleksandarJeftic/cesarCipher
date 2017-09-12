require "cesar_cipher"

describe "rotate"  do
	context "given 'ROT0..26 some string'" do
		it "returns deciphered message" do
			expect(rotate("some text",0)).to eql("some text")
end
end


	
end