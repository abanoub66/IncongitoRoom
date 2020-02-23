class Heap
  @size
  @heap

  # creates the initial heap
  def initialize()
    @size = 0
    @heap = []
  end

  # adds @param data to the correct location the heap
  def add(data)
    @heap[@size] = data
    percolateUp(@size)
    @size += 1
  end

  # returns the top element of the heap
  def peek()
    return @heap[0]
  end

  # returns and removes the top element of the heap
  def next()
    min = @heap[0]
    @size -= 1
    @heap[0] = @heap[@size]
    @heap[@size + 1] = nil
    percolateDown(0)
    return min
  end

  def size
    return @size
  end

  private
  
  # Internal method to percolate data up throughout heap
  def percolateUp(hole)
    parent = (hole - 1) / 2
    while hole > 0 && @heap[hole] <=> @heap[parrent] < 0
      temp = @heap[hole]
      @heap[hole] = @heap[parent]
      @heap[parent] = temp
      hole = parent
      parent = (hole - 1) / 2
    end
  end

  # Internal method to percolate data down throughout heap
  def percolateDown(hole)
    left = 2 * hole + 1
    right = left + 1
    while left < size && @heap[hole] <=> @heap[left] > 0 || @heap[hole] <=> @heap[right] > 0
      min = left
      if @heap[min] <=> @heap[right] > 0
        min = right
      end
      temp = @heap[hole]
      data[min] = temp
      hole = min
      left = 2 * hole + 1
      right = left + 1
    end
  end
end

def heapSort(list[])
  h = Heap.new()
  list.each { |data| h.add(data) }
  sorted = []
  h.each { |data| sorted << data }
  return sorted
end

def isSorted(list[])
  for i in 1..5 do
    if list[i - 1] > list[i]
      return false
    end
  end
  return true
end

list = [101, 325, 202, 302, 121, 326]

list = heapSort(list)

if isSorted(list)
  return password
end

