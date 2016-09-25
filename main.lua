function loopWords()
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

	function repeatWord()
		print("What would you like to be print out on the screen?")
		userInputText = io.read()
		print(string.format("How many times would you like to print \"%s\" on the screen?", userInputText))
		userInputNumber = io.read()
		print("\n")
		userInputNumber = tonumber(userInputNumber)
		loopText(userInputText,userInputNumber)
		salutations(userInputText,userInputNumber)
	end
	repeatWord()
end

function calculate()
	function calculateNumber(calculation1, calculation2, userMathInput)
		total = 0
		remainder = 0
		local add = "+"
		local subtract = "-"
		local multiply = "*"
		local divide = "/"
		if userMathInput == add then
			total = total + (calculation1 + calculation2)
		elseif userMathInput == subtract then
			total = calculation1 - calculation2
		elseif userMathInput == multiply then
			total = calculation1 * calculation2
		elseif userMathInput == divide then
			total =  calculation1 / calculation2
			remainder = calculation1 % calculation2
		else
			total = "error!"
		end

		io.write("The total of your caltulations is: ")
		print(total)
		
	end

	function calculateMain()
		print("Please enter the numbers you would like to calculate!\n")
		io.write("First Number: ")
		calculation1 = io.read()
		calculation1 = tonumber(calculation1)
		io.write("\n\nSecond Number: ")
		calculation2 = io.read()
		calculation2 = tonumber(calculation2)
		print("\n")
		print("Please enter what kind of mathmatical operation you would like to do on the two numbers [+, -, *, /]")
		userMathInput = io.read()
		calculateNumber(calculation1, calculation2, userMathInput)
	end
	calculateMain()
end

loopWords()
calculate()
