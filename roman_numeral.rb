#!/usr/bin/env ruby

class RomanNumeral
  def self.to_arabic_numeral(roman)
    arabic = 0
    values = { :i => 1, :v => 5, :x => 10, :l => 50, :c => 100, :d => 500, :m => 1000 }

    roman.downcase.each_char.map{|c| values[c.to_sym]}.inject(&:+)
  end

end
