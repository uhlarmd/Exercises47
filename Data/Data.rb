file = File.open("data.csv", 'r')

array = []

file.each_line do |line|
array = line.split(',')
end

def min(array)
	puts "The Min is #{array.min}"
end

def max(array)
	puts "The Max is #{array.max}"	
end

def average(array)
	total = 0
	average = 0
	array.each do |element|
		total += element.to_f
	end
	average = total / array.length
	puts "The Average is #{average}"
end

def mode(array)
	var = 0
	mode = 0
	prevVar = 0
	array.each do |i|
		array.each do |n|
			if i == n
				var += 1
				mode = n if var > prevVar
				prevVar = var
			end
		end
		var = 0
	end
	puts "The Mode is #{mode}"
end

def median(array)
	sorted = array.sort
	length = array.length
	median = 0

	if length%2 == 0
		first = sorted[length/2 - 1]
		second = sorted[length/2] 

		median = (first + second) / 2
	else
		median = sorted[(length-1)/2]
	end
	puts "The Median is #{median}"
end


min(array)
max(array)
average(array)
mode(array)
median(array)  