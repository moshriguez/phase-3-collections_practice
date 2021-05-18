def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|a, b| b <=> a }
end

def sort_array_char_count(array)
    array.sort {|a ,b| a.length <=> b.length}
end

def swap_elements(array)
    newArr = array[1, 2]
    array[2] = newArr[0]
    array[1] = newArr[1]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    newArr = []
    array.each do |str|
        str[2] = '$'
        newArr << str
    end
    newArr
end

def find_a(array)
    array.select do |str|
        str.start_with?('a')
    end
end

def sum_array(array)
    # array.sum
    array.inject {|sum, n| sum + n}
end

def add_s(array)
    array.each_with_index.collect do |str, index|
        if index == 1 
            str
        else 
            str + 's'
        end
    end
end