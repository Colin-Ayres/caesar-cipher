def bubble_sort(array)
    swaps = true
    return array if array.length <= 1
    sorted_boundary = array.length
    while swaps do
        swaps = false
        i = 0
        until i == (sorted_boundary - 1) do
            if (array[i] > array[i+1])
                #Swap array elements
                array[i], array[i+1] = array[i+1], array[i]
                swaps = true
            end
        i += 1
        end
        sorted_boundary -= 1
    end
    p array
end

#Test case
#bubble_sort([7,6,9,3,5,10,2,4,1,8])