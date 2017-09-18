
def car_total(*prices)#price is array class
	prices.inject(:+)
end
n1 = 10
puts car_total(100)
puts car_total(100,200)
puts car_total(100,200,300)

def car_total(num1,*prices)
	prices.inject(:+)
end
n1 = 10
puts car_total(n1,100)
puts car_total(100,200)