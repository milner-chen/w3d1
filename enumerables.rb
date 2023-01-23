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

    def my_select(&prc)
        my_each(prc)
    end

end

a = [1, 2, 3]
a.my_select { |num| num > 1 } # => [2, 3]
a.my_select { |num| num == 4 } # => []
