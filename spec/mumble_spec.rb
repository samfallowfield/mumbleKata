require_relative "../mumble.rb"

describe MumblePhrase do

    it "can handle an empty string" do
        mumble_phrase=MumblePhrase.new
        expect(mumble_phrase.make_mumble("")).to eq("")
    end

    it "when given a lowercase letter returns and uppercase letter" do
        mumble_phrase = MumblePhrase.new
        expect(mumble_phrase.make_mumble("a")).to eq("A")
    end

    it "can return a string with two letters with a capital" do
        mumble_phrase = MumblePhrase.new
        expect(mumble_phrase.make_mumble("ab")).to eq("A-Bb")
    end

    it "can return a string with a word correctly" do
        mumble_phrase = MumblePhrase.new
        expect(mumble_phrase.make_mumble("qwerty")).to eq("Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy")
    end
    
    it "can return the correct string if given multiple capital letters" do
        mumble_phrase= MumblePhrase.new
        expect(mumble_phrase.make_mumble("aBcD")).to eq("A-Bb-Ccc-Dddd")
    end
end