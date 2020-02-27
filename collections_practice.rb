# your code goes here

def begins_with_r(array)
    !array.find { |s| s[0] != 'r' }
end

def contain_a(array)
    array.find_all { |s| s.include?('a') }
end

def first_wa(array)
    array.find { |s| s[0...2] == 'wa' }
end

def remove_non_strings(array)
    array.reject { |ho| ho.class != String }
end

def count_elements(array)
    array.map { |h| {:name => h[:name], :count => array.count(h) } }.uniq
end

def merge_data(one, two)
    one.zip(two).map { |h| h[0].merge!(h[1]) }
end

def find_cool(array)
    array.find_all { |h| h[:temperature] == "cool" }
end

def organize_campuses(c)
    hash = Hash.new
    c.map { |k, v| {v[:location] => k} }.each { |ho| if !hash[ho.keys[0]] then hash[ho.keys[0]] = [ho.values[0]] else hash[ho.keys[0]] << ho.values[0] end  }
    hash
end