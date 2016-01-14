puts "Hello! Let's play rock paper scissors! \nType \'r\' for rock, \n\'p\' for paper, or\n\'s\' for scissors."

computer = "rsp"[rand(3)].chr

player = $stdin.gets.chomp.downcase

case [player, computer]
	when ['p', 'r'], ['s', 'p'], ['r', 's']
		puts "Wow, you won!"
	when ['p', 's'], ['s', 'r'], ['r', 'p']
		puts "Uh-oh...You lost!"
	else 
		puts "Oh golly, a tie."
end
