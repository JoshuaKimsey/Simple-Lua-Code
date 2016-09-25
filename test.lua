function printText(userInputText)
	print(userInputText)
end

function loopText(userInputText, userInputNumber)
	local i = 0
	while (i < userInputNumber) do
	printText(userInputText)
	i = i + 1
	end
end

function salutations(userInputText,userInputNumber)
	print(string.format("\n\"%s\" has been printed %d times!\nThank you! \nGood-bye!", userInputText, userInputNumber))
end

function main()
	print("What would you like to be print out on the screen?")
	userInputText = io.read()
	print(string.format("How many times would you like to print \"%s\" on the screen?", userInputText))
	userInputNumber = io.read()
	print("\n")
	userInputNumber = tonumber(userInputNumber)
	loopText(userInputText,userInputNumber)
	salutations(userInputText,userInputNumber)
end

main()
