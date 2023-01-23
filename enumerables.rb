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



end


