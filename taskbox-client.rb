require 'httparty'
require 'json'

$url = "http://localhost:3000/api/v1/"

def index
	response = HTTParty.get($url + "clients")
	clients = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing of clients"
	puts "*" * 50
	clients.each_with_index do |client,index|
		puts "#{index+1}. #{client["name"]}(#{client["id"]})"
	end
end

def show_errors(client)
	puts "*" * 50
	puts "These errors prohibitted the record to be saved"
	puts "*" * 50
	puts client["errors"]	
end

def new_task
	client = {}
	puts "Enter the name"
	client["name"] = gets.chomp
	puts "Enter mobile no."
	client["moblie"] = gets.chomp
	puts "Enter the email"
	client["email"] = gets.chomp
	puts "Enter the website"
	client["website"] = gets.chomp
	response = HTTParty.post($url + "clients", body:{
		"client" => client})
	
	client = JSON.parse(response.body)
	if client.has_key?("errors")
		show_errors(client)
		new_task
	else
		puts "client Created:#{client["name"]}"
	end

end
def edit
	index
	puts "Enter the id of the record"
	id = gets.to_i
	response = HTTParty.get($url + "clients/#{id}")
	client = JSON.parse(response.body)
	if client.has_key?("alert")
		puts client["alert"]
		edit
	else
		cont = 'y'
		while cont == 'y'
			puts "1. name \n2. mobile \n3. Email \n4. website"
			option = gets.chomp
			case option
			when "1"
				puts "Enter name"
				client["name"] = gets.chomp
			when "2"
				puts "Enter mobile"
				client["mobile"] = gets.chomp
			when "3"
				puts "Enter the email"
				client["email"] = gets.chomp
			when "3"
				puts "Enter the website"
				client["website"] = gets.chomp
			else
				puts "Invalid option"	
			end
			puts "Do you wish to continue(y/n)"
			cont = gets.chomp
		end
	end
	response = HTTParty.patch($url + "clients/#{id}", body:{ "client" => client})
	
	client = JSON.parse(response.body)
	if client.has_key?("errors")
		show_errors(client)
		new_task
	else
		puts "client updated:#{client["name"]}"
	end
	
end

def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.to_i
	response = HTTParty.delete($url + "clients/#{id}")
	client = JSON.parse(response.body)
	if client.has_key?("alert")
		puts client["alert"]
		delete
	else
		puts client["notice"]
	end
end

def show
	puts "Enter the id"
	id = gets.to_i
	response = HTTParty.get($url + "clients/#{id}")	
	client = JSON.parse(response.body)
	client.each do |key,value|
		puts "#{key} - #{value}"
	end
end

cont = 'y'
while cont == 'y'
	puts "1. List \n2. Add \n3. Edit \n4. Show \n5. Delete "
	puts "Enter your option"
	option = gets.chomp

	case option
		when "1" 
			index
		when "2"
			new_task
		when "3"
		 	edit
		 when "4"
		 	show
		when "5"
		 	delete
		else 
			puts "invalid option"
	end
	puts "Do you want to continue(y/n)"
	cont = gets.chomp
end


