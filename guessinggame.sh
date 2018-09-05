clear 	#clears the terminal

# this funtion will be called everytime the user has to type (another) guess
function type_guess {
  read guess
  # if guess is not a number
  while ! [[ "$guess" =~ ^-?[0-9]+$ ]]
  do
    echo -n "You have to type a number: "
    read guess
  done
}


echo "How many files are there in the current directory?"


# The number of files is obtained by counting the number of lines that start with a hyphen '-' once the command ls is executed:
correct=$(ls -l | grep "^-" | wc -l)
type_guess


while [ $guess -ne $correct ] 		# while the guess is incorrect
do

  if [ $guess -gt $correct ]		# if the guess is too high
  then
    echo -n "Too high! "
  else					# else (if it too low - since it is not equal either)
    echo -n "Too low! "
  fi

  # Another attempt:
  echo -n "Try again: "
  type_guess

done

# If the previous cycle was finished, it means the user got the answer right and the following message is printed to the console
echo "Whoa! You guessed it right. Congratulations!"
