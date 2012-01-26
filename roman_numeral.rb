#!/usr/bin/env ruby

class RomanNumeral
  def self.to_arabic_numeral(roman)
    arabic = 0
    v = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
    prev = 0

    roman.each_char.map{|c| v[c]}.each do |i|
      arabic += i <= prev ? prev : 0
      prev = i <= prev ? i : i - prev
    end
    arabic + prev

#    while !charvals.empty? do
#      c = charvals.shift
#
#      if !charvals.first.nil? && c < charvals.first
#        arabic += charvals.shift - c
#      else
#        arabic += c
#      end
#    end
#    arabic
  end

end
