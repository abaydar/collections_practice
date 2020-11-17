def sort_array_asc(array)
    array.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(array)
    array.sort do |a, b|
        b <=> a
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    kesha_array = []
    array.each do |string|
        string.slice!(2)
        kesha_array << string.insert(2, "$")
    end
    return kesha_array
end

def find_a(array)
    array.select {|string| string.start_with?("a")}
end

def sum_array(array)
    #array.sum
    array.inject(0){|sum,x| sum + x }
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else
            element + "s"
        end
    end
end