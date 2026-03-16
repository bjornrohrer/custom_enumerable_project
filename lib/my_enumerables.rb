module Enumerable
  def my_all?
    my_each { |element| return false unless yield(element) }
    true
  end
end

class Array
  def my_each
    for element in self
      yield(element)
    end
    self
  end
end
