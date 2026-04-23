#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER=$(( RANDOM % 1000 + 1 ))


echo -e "\nEnter your username:"
read USER


#check if you have this user
USERN=$($PSQL "SELECT username FROM number_guess WHERE username = '$USER'")
if [[ -z $USERN ]]
then
  INSERT_USER=$($PSQL "INSERT INTO number_guess(username, games_played, best_game) VALUES('$USER', 0, 0)")
  echo -e "\nWelcome, $USER! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM number_guess WHERE username = '$USER'")
  BEST_GAME=$($PSQL "SELECT best_game FROM number_guess WHERE username = '$USER'")
  echo -e "\nWelcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#take input
echo -e "\nGuess the secret number between 1 and 1000:"
read INPUT

NO_OF_GUESSES=1

while [[ $INPUT != $NUMBER ]]
do
  #determine if the input is integer
  if [[ ! $INPUT =~ ^[0-9]+$ ]]; then
    echo -e "\nThat is not an integer, guess again:"
    read INPUT
    let "NO_OF_GUESSES++"

  else
    #check if the guess is right
    if [[ $INPUT -gt $NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      read INPUT
      let "NO_OF_GUESSES++"
    elif [[ $INPUT -lt $NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      read INPUT
      let "NO_OF_GUESSES++"
    fi
  fi
done

# After loop exits (correct guess), update database
if [[ -z $USERN ]]
then
  UPDATE_GAMES=$($PSQL "UPDATE number_guess SET games_played = 1, best_game = $NO_OF_GUESSES, number_of_guesses = $NO_OF_GUESSES WHERE username = '$USER'")
else
  UPDATE_GAMES=$($PSQL "UPDATE number_guess SET games_played = games_played + 1, number_of_guesses = $NO_OF_GUESSES WHERE username = '$USER'")
  UPDATE_BEST=$($PSQL "UPDATE number_guess SET best_game = $NO_OF_GUESSES WHERE username = '$USER' AND (best_game = 0 OR $NO_OF_GUESSES < best_game)")
fi

echo -e "\nYou guessed it in $NO_OF_GUESSES tries. The secret number was $NUMBER. Nice job!"





