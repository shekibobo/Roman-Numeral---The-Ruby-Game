require 'rspec'
require_relative '../roman_numeral'

describe "Roman Numeral" do
  context "to_arabic_numeral" do
    context "with single-character numerals" do
      it 'converts I to 1' do
        RomanNumeral.to_arabic_numeral("I").should == 1
      end

      it 'converts V to 5' do
        RomanNumeral.to_arabic_numeral("V").should == 5
      end

      it 'converts X to 10' do
        RomanNumeral.to_arabic_numeral("X").should == 10
      end

      it 'converts L to 50' do
        RomanNumeral.to_arabic_numeral("L").should == 50
      end

      it 'converts C to 100' do
        RomanNumeral.to_arabic_numeral("C").should == 100
      end

      it 'converts D to 500' do
        RomanNumeral.to_arabic_numeral("D").should == 500
      end

      it 'converts M to 1000' do
        RomanNumeral.to_arabic_numeral("M").should == 1000
      end
    end # single-character numerals

    context 'with compound numerals' do
      it 'converts VI to 6' do
        RomanNumeral.to_arabic_numeral("VI").should == 6
      end

      it 'converts IV to 4' do
        RomanNumeral.to_arabic_numeral("IV").should == 4
      end

      it 'converts MCM to 1900' do
        RomanNumeral.to_arabic_numeral("MCM").should == 1900
      end

      it 'converts MCMXCIX to 1999' do
        RomanNumeral.to_arabic_numeral("MCMXCIX").should == 1999
      end
    end # compound numerals
  end
end
