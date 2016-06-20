puts "Please input equation: "
input=gets.chomp
holder=input.split(" ")
no_spaces=""
holder.each do |i|
  no_spaces+=i
end

first_num=""
second_num=""
symbol=""
counter=0

no_spaces.each_char do |i|
  if (i != "+" && i != "-" && i != "*" && i != "/") && counter<1
    first_num+=i
  end
  if i=="+"||i=="-"||i=="*"||i=="/"
    counter=1
    symbol=i
    next
  end
  if counter==1
    second_num+=i
  end
end


if symbol=="+"
  puts first_num.to_i + second_num.to_i
end
if symbol=="-"
  puts first_num.to_i - second_num.to_i
end
if symbol=="*"
  puts first_num.to_i * second_num.to_i
end
if symbol=="/" && second_num!="0"
  puts first_num.to_f / second_num.to_f
end
if second_num=="0"
  puts "You can't divide by zero"
end
