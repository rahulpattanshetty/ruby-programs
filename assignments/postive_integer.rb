puts "Enter the number to print all positive integer"
number=gets.to_i
n = 0
if number < 0
    puts "Enter a positive integer"
else
    number.times do
        puts n += 1
    end
end