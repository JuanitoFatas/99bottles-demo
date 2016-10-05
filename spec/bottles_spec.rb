RSpec.describe Bottles do
  describe "#verse" do
    context "99" do
      it "returns correct verse" do
        expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
        VERSE

        expect(expected).to eq(Bottles.new.verse(99))
      end
    end
  end
end