module Wundernut6
  def self.solve(heights)
    biggest_side = 1
    len = heights.length
    # i is the index the square might start at
    i = 0
    while i + biggest_side < len
      skip, smallest = 0, heights[i]
      # look at i and subsequent positions up to the end
      0.upto(len - i - 1) do |index_offset|
        col_height = heights[i + index_offset]
        side = index_offset + 1
        # if this column is not higher than the biggest found, skip past it
        if col_height <= biggest_side
          skip = index_offset
          break
        end
        # if this column is the lowest yet, remember that
        if col_height < smallest
          skip, smallest = index_offset, col_height
        end
        # stop if there was a smaller column that the side length being tested
        break if smallest < side

        biggest_side = side if side > biggest_side
      end
      # skip ahead to where a better square may be found
      i += skip + 1
    end

    return biggest_side
  end
end

if $0 == __FILE__
  heights = File.readlines("heights.txt").map {|h| h.to_i}
  biggest_side = Wundernut6.solve(heights)
  puts "Biggest side: #{biggest_side} units"
  puts "Area: #{biggest_side * biggest_side} units^2"
end
