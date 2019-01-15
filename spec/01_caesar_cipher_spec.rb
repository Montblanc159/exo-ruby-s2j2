require_relative '../lib/01_cesar.rb'

describe "split the sentence into words" do
  it "should return an array of words" do
    expect(split_sentence("What a string!")).to eq(["What", "a", "string"])
    expect(split_sentence("dCode Caesar")).to eq(["dCode", "Caesar"])
  end
end

describe "split the word into letters" do
  it "should return an array of letters" do
    expect(split_word("What")).to eq(["W", "h", "a", "t"])
  end
end

describe "encode the letters to ASCII" do
  it "should return an array of ASCII code" do
    expect(ascii_encoder_decoder(["B", "o", "n", "j", "o", "u", "r"])).to eq([66, 111, 110, 106, 111, 117, 114])
    expect(ascii_encoder_decoder(["W", "h", "a", "t"])).to eq([87, 104, 97, 116])
  end

  it "should return a string" do
    expect(ascii_encoder_decoder([66, 111, 110, 106, 111, 117, 114])).to eq(["B", "o", "n", "j", "o", "u", "r"])
    expect(ascii_encoder_decoder([87, 104, 97, 116])).to eq(["W", "h", "a", "t"])
  end
end

describe "encrypt the ascii" do
  it "should add the two numbers" do
    expect(encrypt_ascii(97, 2)).to eq(99)
    expect(encrypt_ascii(122, 1)).to eq(97)
    expect(encrypt_ascii(122, 4)).to eq(101)
  end
end

describe "rebuild a word from letters" do
  it "should return an array composed of words" do
    expect(rebuild_word(["W", "h", "a", "t"])).to eq("What")
  end
end

describe "rebuild a sentence from words" do
  it "should return a string" do
    expect(rebuild_sentence(["What", "a", "string"])).to eq("What a string")
  end
end

describe "adds decided number to each ascii code in the array" do
  it "should return the array with each ascii code modified" do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(ceasar_cipher("dCode Caesar",3)).to eq("gFrgh Fdhvdu")
    expect(ceasar_cipher("Merde ! Ruby !", 17)).to eq("Dviuv ! Ilsp !")
  end
end
