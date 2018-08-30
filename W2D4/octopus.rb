# BIg O-ctopus and Biggest Fish
  ocean = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

  def sluggish_octopus(ocean)
    i = 0
    while i < ocean.length - 1
      j = 0
      while j < ocean.length - 1
        ocean[j], ocean[j+1] = ocean[j+1], ocean[j] if ocean[j].length > ocean[j+1].length == 1
        j += 1
      end
      i += 1
    end
    ocean.last
  end

  def dominant_octopus(ocean)
    ocean.sort_by {|fish| fish.length}.last
  end

  def clever_octopus(ocean)
    longest_fish = ocean.first

    ocean.reduce do |longest_fish, fish_i|
      if fish_i.length > longest_fish.length
        fish_i
      else
        longest_fish
      end
    end
  end

# Dancing Octopus
  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

  tiles_hash = {"up" => 0,
                "right-up" => 1,
                "right" => 2,
                "right-down" => 3,
                "down" => 4,
                "left-down" => 5,
                "left" => 6,
                "left-up" => 7}

  def slow_dance(direction, tiles_array)
    tiles_array.index(direction)
  end

  def fast_dance(direction, tiles_hash)
    tiles_hash[direction]
  end


  if __FILE__ == $PROGRAM_NAME
    p sluggish_octopus(ocean) == "fiiiissshhhhhh"
    p dominant_octopus(ocean) == "fiiiissshhhhhh"
    p clever_octopus(ocean) == "fiiiissshhhhhh"

    p slow_dance("up", tiles_array) == 0
    p slow_dance("right-down", tiles_array) == 3

    p fast_dance("up", tiles_hash) == 0
    p fast_dance("right-down", tiles_hash) == 3
  end
