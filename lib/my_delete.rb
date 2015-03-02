require 'pry'
class Array
  def delete_first(argument)
    index = 0
    deleted = false
    array = Array.new(self)
    while index < self.length
      if array[index] == argument && deleted == false
        deleted = true
      array.delete_at(index)
      end
      index += 1
    end
    array
  end

  def delete_last(argument)
    index = -1
    array = Array.new(self)
    deleted = false
    while index > -(self.length)
      if array[index] == argument && deleted == false
        array.delete_at(index)
        deleted = true
      end
      index -= 1
    end
    array
  end

  def delete_middle(word)
    array = Array.new(self)
    index_array = []
    index = 0
      while index < self.length do
        if self[index] == word
          index_array << index
        end
        index += 1
      end
      middle_index = index_array.length/2
      if index_array.length.even?
        array.delete_at(index_array[middle_index])
        array.delete_at(index_array[middle_index-1])
      else
        array.delete_at(index_array[middle_index])
      end
      array
  end
end
