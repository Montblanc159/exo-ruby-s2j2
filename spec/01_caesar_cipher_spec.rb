# frozen_string_literal: true

require_relative '../lib/01_caesar_cipher.rb'

describe "encode the letters to ASCII" do
  it "should return an array of ASCII code" do
    expect(ascii_encoder_decoder("B")).to eq(66)
    expect(ascii_encoder_decoder("W")).to eq(87)
  end

  it "should return a string" do
    expect(ascii_encoder_decoder(66)).to eq("B")
    expect(ascii_encoder_decoder(87)).to eq("W")
  end
end

describe "encrypt the ascii" do
  it "should add the two numbers" do
    expect(encrypt_ascii(97, 2)).to eq(99)
  end
  it "should loop the alphabet" do
    expect(encrypt_ascii(90, 1)).to eq(65)
    expect(encrypt_ascii(122, 1)).to eq(97)
  end
  it "should leave the puncuation as it is" do
    expect(encrypt_ascii(32, 5)).to eq(32)
  end
end

describe "encrypts with the caesar code" do
  it "should return the string in entry ciphered in caesar" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("dCode Caesar",3)).to eq("gFrgh Fdhvdu")
    expect(caesar_cipher("Merde ! Ruby !", 17)).to eq("Dviuv ! Ilsp !")
  end
end
