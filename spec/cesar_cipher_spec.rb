require "cesar_cipher"

describe CesarCipher  do
	describe ".rotate" do


		context "when number 0 is provided" do
			let(:num) {0}

			it "returns the same text that is provided" do
			str="Some text"
				expect(CesarCipher.rotate(str, num)).to eql("Some text")
			end 
		end

		context "when number 26 is provided" do
			let(:num){26}

			it "returns the same text that is provided" do
			str="Some text"
				expect(CesarCipher.rotate(str,num)).to eql("Some text")
			end
		end

		context "when number 1 is provided" do 
			let(:num){1}

			it "encrypts the given string by rotating it a single character" do
			str="Some text"
				expect(CesarCipher.rotate(str,num)).to eql("Tpnf ufyu")
			end
		end


	end
end
		