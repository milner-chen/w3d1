class Array
    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end

        self
    end


# return_value = [1, 2, 3].my_each do |num|
#     puts num
# end.my_each do |num|
#     puts num
# end

#    p return_value

    # def my_select(&prc)
    #     arr = []
    #     self.my_each(&prc)

    #     return arr

    # end


    
# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []


    def my_reject(&prc)
        arr = []

        i = 0
        while i < self.length
            if prc.call(self[i]) == false
                arr << self[i]
            end
            i += 1
        end

        return arr
    end

    
# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]

    def my_any?(&prc)
        i = 0
        while i < self.length
            if prc.call(self[i])
                return true
            end
            i += 1
        end

        false
    end

    def my_all?(&prc)
        i = 0
        while i < self.length
            if prc.call(self[i]) == false
                return false
            end
            i += 1
        end
        true
    end
    # a = [1, 2, 3]
    # p a.my_any? { |num| num > 1 } # => true
    # p a.my_any? { |num| num == 4 } # => false
    # p a.my_all? { |num| num > 1 } # => false
    # p a.my_all? { |num| num < 4 } # => true

    def my_flatten
        if self.is_a?(Array) == false
            return self.to_a
        end
        arr = []

        i = 0
        while i < self.length
            if self.is_a?(Array) == false
                arr += self[i]
            else
                self[i].my_flatten
            end
            i += 1
        end

        arr
    end
end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
