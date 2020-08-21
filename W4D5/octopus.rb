fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"


#O(n^2)
def sluggish_octopus(arr)
    longest = arr[0]
    (0...arr.length).each do |fish_1|
        (0...arr.length).each do |fish_2|
            longest = arr[fish_1] if arr[fish_1].length > arr[fish_2].length
        end
    end
    longest
end

def dominant_octopus(arr)
    return arr if arr.length <= 1
    mid_i = arr.length/2
    left = dominant_octopus(arr[0...mid_i])
    right = dominant_octopus(arr[mid_i..-1])
    merge(left, right)
end


def merge(arr_1, arr_2)
    res = []
    until arr_1.empty? || arr_2.empty?
        if arr_1.first.length < arr_2.first.length
            res.push(arr_1.shift)
        else
            res.push(arr_2.shift)
        end
    end
    res + arr_1 + arr_2

end


def clever_octopus(arr)
    longest = ''
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

# p sluggish_octopus(fish)
# p dominant_octopus(fish)[-1]
# p clever_octopus(fish)



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def slow_dance(dir, arr)
    arr.each_with_index do |direction, idx|
        return idx if direction == dir
    end
    nil
end

def fast_dance(dir, hash)
    hash[dir]
end
# p slow_dance("up", tiles_array)

# p slow_dance("right-down", tiles_array)

p fast_dance("up", new_tiles_data_structure)
# > 0

p fast_dance("right-down", new_tiles_data_structure)
# > 3