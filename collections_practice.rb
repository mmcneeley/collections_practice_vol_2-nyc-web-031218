# your code goes here

def begins_with_r(array)
  array.all? do |value|
    true if value[0].downcase == "r"
  end
end

def contain_a(array)
    words = []
    array.collect do |word|
      i = 0
      while i < word.length
        if word[i].downcase == "a"
        words << word
        end
        i += 1
      end
    end
    words
end

def first_wa(array)
  array.find {|x| x[0..1].to_s.downcase == "wa"}
end

def remove_non_strings(array)
  array.select do |x|
    x.class == String ? x : nil
  end.compact
end

def count_elements(array)
  #go through the array and add count key
  #set a count key = 0
  #set a name variable we need to look through
    #go through each value again...
    #if the name variable == key
    #increment the count
  #remove duplicates
  array.each do |value|
    value[:count] = 0
    name = value[:name]
      array.each do |hash_k|
        if hash_k[:name] == name
          value[:count] += 1
        end
      end
  end.uniq
end

def merge_data(data1, data2)
  data1 = Set.new data1
  data2 = Set.new data2
  data1.merge data2
end
