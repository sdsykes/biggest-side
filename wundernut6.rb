module Wundernut6
  def self.solve(heights)
    biggest_side = 1
    len = heights.length

    i = 0
    while i + biggest_side <= len
      skip = 0

      smallest = heights[i]
      0.upto(len - i - 1) do |index_offset|
        col_height = heights[i + index_offset]
        side = index_offset + 1

        if col_height <= biggest_side
          skip = index_offset
          break
        end

        smallest = col_height if col_height < smallest

        break if smallest < side

        biggest_side = side if side > biggest_side
      end

      i += 1 + skip
    end

    return biggest_side
  end
end

if $0 == __FILE__
  heights = File.readlines("heights.txt").map {|h| h.to_i}
  biggest_side = Wundernut6.solve(heights)
  puts "Biggest side #{biggest_side} units"
  puts "Area: #{biggest_side * biggest_side} units^2"
end
