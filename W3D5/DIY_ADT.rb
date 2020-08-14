class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map
    def initialize
        @map = []
    end

    def set(k, v)
        @map.each_with_index do |pair, idx|
            if pair[0] == k
                @map[idx][1] = v   
                return @map[idx]    
            end        
        end
        @map << [k, v]
        return @map[-1]
    end

    def get(k)
        @map.each_with_index do |pair, idx|
            if pair[0] == k
                return pair[1]
            end
        end
        return nil
    end

    def delete(k)
        @map.each_with_index do |pair, idx|
            if pair[0] == k
                @map.delete_at(idx)
                return @map
            end
        end
        return nil
    end

    def show
        @map
    end
end