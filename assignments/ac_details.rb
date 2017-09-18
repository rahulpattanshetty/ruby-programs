class Account
	attr_accessor :name,:number,:balance

	def initialize(details)
		@name = details[:name]
		@number = details[:number]
		@balance = details[:balance]
		
	end
	def transaction(code,amount)
		if code == 1
			@balance += amount
			puts "Ur new Balance is #{balance}"
		elsif code == 0
			@bal_w = balance
			@bal_w -= amount
			if @bal_w < 0
				puts "Insufficient Balance to Withdrawal"
				puts "Ur Balance is #{balance}"
			else
				@balance -= amount
				puts "Ur new Balance is #{balance}"
			end
		end
	end
	def details
		"Account-#{name} Number-#{number} Balance-#{balance}"
	end
end
accounts = []
a1=Account.new({name:"ramesh",number:12345,balance:1000})
a2=Account.new({name:"suresh",number:14325,balance:43000})
a3=Account.new({name:"veeresh",number:86765,balance:33000})
a4=Account.new({name:"ganesh",number:34654,balance:2000})
accounts.push(a1,a2,a3,a4)

puts "-----------------Account Details-------------------"
accounts.each {|account| puts account.details}
puts "-"*50
puts "\nEnter code for Deposit(1) or Withdrawal(0)"
code=gets.to_i
if code==1
	puts "Enter the account number to deposit"
	acc_number=gets.to_i
	account=accounts.find {|acc| acc.number == acc_number}
	if account.nil?
		puts "Entered Account number is invalid"
	else
		puts "Enter the money to deposit"
		amt=gets.to_f
		account.transaction(code,amt)
	end
elsif code==0 
	puts "Enter the account number to Withdrawal"
	acc_number=gets.to_i
	account=accounts.find {|acc| acc.number == acc_number}
	if account.nil?
		puts "Entered Account number is invalid"
	else
		puts "Enter the money to Withdrawal"
		amt=gets.to_f
		account.transaction(code,amt)
	end
end