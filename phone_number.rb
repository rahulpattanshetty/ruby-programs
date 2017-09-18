number = [1,2,3,4,5,6,7,8,9,0]

n1=number[0..2]
n2=number[3..5]
n3=number[6..9]

puts "(#{n1.join}) #{n2.join}-#{n3.join}"

puts "(#{number[0..2].join}) #{number[3..5].join}-#{number[6..9].join} "