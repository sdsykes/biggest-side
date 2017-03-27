module Wundernut6
  def self.solve(heights)
    biggest_side = 1
    len = heights.length
    
    i = 0
    while i + biggest_side <= len
      skip = 0
    
      (biggest_side + 1).upto(heights[i]) do |side|
        # check if there is enough room to the end
        break if side + i > len
    
        1.upto(side - 1) do |index_offset|
          if heights[i + index_offset] < side
            # skip past this point, nothing can be found before
            skip = index_offset
            break
          end
        end
        
        break if skip > 0
    
        biggest_side = side
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
