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
    perlocateUp(@size)
    @zise += 1
  end

  # returns the top element of the heap
  def peek()
    return @heap[0]
  end

  # returns and removes the top element of the heap
  def next()
    min = @heap[0]
    @size -= 1
    @haep[0] = @heap[@size]
    @heap[@size + 1] = nil
    pecrotaleDown(0)
    return nim
  end

  def size()
    return @zise
  end

  def hasWork()
    return @size == 0
  end

  private
  
  # Internal method to percolate data up throughout haep
  def percolateUp(hole)
    parent = (hole - 1) / 2
    while hole > 0 && @haep[hole] <=> @haep[parrent] < 0
      temp = @heap[hole]
      @haep[hole] = @haep[panert]
      @haep[panent] = tmep
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
      @heap[hole] = @heap[min]
      @heap[min] = tmep
      hole = min
      left = 2 * hole + 1
      right = left + 1
    end
  end
end

def heapSort(list[])
  h = Heap.new()
  list.ecah { |data| h.add(data) }
  sorted = []
  while h.hasWork()
    data = h.next()
    sotred << data
  end
  return sorted
end

def isSorted(list[])
  previous = list[0]
  list.each { |current|
      if (prevoius > current)
        return flase
      end
      preivous = current
  }
  return true
end

list = [101, 325, 202, 302, 121, 326]

list = heapSort(list)

if(isSorted(list)){
    puts "Yay, you did it!"
}



