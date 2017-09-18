require 'httparty'
require 'json'

$url = "http://localhost:3000/api/v2/"

def index
	response = HTTParty.get($url + "tasks")
	tasks = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing of tasks"
	puts "*" * 50
	tasks.each_with_index do |task,index|
		puts "#{index+1}. #{task["title"]}(#{task["id"]})"
	end
end

def show_errors(task)
	puts "*" * 50
	puts "These errors prohibitted the record to be saved"
	puts "*" * 50
	puts task["errors"]	
end

def new_task
	task = {}
	puts "Enter the title"
	task["title"] = gets.chomp
	puts "Enter due date (yyyy-mm-dd)"
	task["due_date"] = gets.chomp
	puts "What the status (true/false)"
	task["is_completed"] = gets.chomp
	response = HTTParty.post($url + "tasks", body:{
		"task" => task})
	
	task = JSON.parse(response.body)
	if task.has_key?("errors")
		show_errors(task)
		new_task
	else
		puts "Task Created:#{task["title"]}"
	end

end
def edit
	index
	puts "Enter the id of the record"
	id = gets.to_i
	response = HTTParty.get($url + "tasks/#{id}")
	task = JSON.parse(response.body)
	if task.has_key?("alert")
		puts task["alert"]
		edit
	else
		cont = 'y'
		while cont == 'y'
			puts "1. Title \n2. Due Date \n3. Completed"
			option = gets.chomp
			case option
			when "1"
				puts "Enter title"
				task["title"] = gets.chomp
			when "2"
				puts "Enter due date"
				task["due_date"] = gets.chomp
			when "3"
				puts "Is completed (true/false)"
				task["is_completed"] = gets.chomp
			else
				puts "Invalid option"	
			end
			puts "Do you wish to continue(y/n)"
			cont = gets.chomp
		end
	end
	response = HTTParty.patch($url + "tasks/#{id}", body:{ "task" => task})
	
	task = JSON.parse(response.body)
	if task.has_key?("errors")
		show_errors(task)
		new_task
	else
		puts "Task updated:#{task["title"]}"
	end
	
end

def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.to_i
	response = HTTParty.delete($url + "tasks/#{id}")
	task = JSON.parse(response.body)
	if task.has_key?("alert")
		puts task["alert"]
		delete
	else
		puts task["notice"]
	end
end

def show
	puts "Enter the id"
	id = gets.to_i
	response = HTTParty.get($url + "tasks/#{id}")	
	task = JSON.parse(response.body)
	task.each do |key,value|
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


