def stock_picker(array)
    largest = -500
    firstday = 0
    lastday = 0
    array.each_with_index do |vali, indexi|  
        array.each_with_index do |valj, indexj| 
            if largest < (valj - vali) && (indexi < indexj)
                largest = (valj - vali)
                firstday = indexi
                lastday = indexj
            end
        end
    end   
p "For a profit of $" + largest.to_s + ", purchase your stock on Day " + (firstday+1).to_s + " ($" + array[firstday].to_s + ") and sell on Day " + (lastday+1).to_s + " ($" + array[lastday].to_s + ")."
end

#Test case
#stock_picker([17,3,6,9,15,8,6,1,10])