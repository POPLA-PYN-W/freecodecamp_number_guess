#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RAN_NUMBER=350
# RAN_NUMBER=$((1 + $RANDOM % 1000))
COUNT=1
# # # # #
echo -e "\nEnter your username:"
# input name
read NAME
# query username
USER_NAME=$($PSQL "SELECT username FROM users WHERE username='$NAME'")

if [[ -z $USER_NAME ]];then
    INSERT_NAME=$($PSQL "INSERT INTO users(username) VALUES('$NAME')")
    GET_NAME=$($PSQL "SELECT username FROM users WHERE username='$NAME'")
    echo -e "Welcome, $GET_NAME! It looks like this is your first time here."
else
    # add more queries below this line
    TOTALS_PLAYED=$($PSQL "SELECT total_played FROM users WHERE username = '$NAME'")
    PLAYER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$NAME'")
    BEST_PLAYED=$($PSQL "SELECT MIN(total_guesses) FROM guessing WHERE user_id = $PLAYER_ID")
    UPDATE_GUESSES=$($PSQL "UPDATE guessing SET total_guesses = $BEST_PLAYED WHERE user_id = $PLAYER_ID")
    echo -e "Welcome back, $USER_NAME! You have played $TOTALS_PLAYED games, and your best game took $BEST_PLAYED guesses."
fi
# PART 2 create functon secret_number for randomly create number

echo -e "\nGuess the secret number between 1 and 1000:"
GUESS_GAME () {
  read NUMBERS
    if [[ ! $NUMBERS =~ ^[0-9]+$ ]];then
        echo "That is not an integer, guess again:"
        let COUNT=COUNT+1
        GUESS_GAME
    else
        if [[ $NUMBERS == $RAN_NUMBER ]];then
            OLD_TOTAL_PLAYED=$($PSQL "SELECT total_played FROM users WHERE username = '$NAME'")
            ((OLD_TOTAL_PLAYED+=1))
            CURRENT_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$NAME'")
            # insert/update total_guesses
            INSERT_GUESSES=$($PSQL "INSERT INTO guessing(user_id, total_guesses) VALUES($CURRENT_USER_ID, $COUNT)")
            # UPDATE_GUESSES=$($PSQL "UPDATE guessing SET total_guesses = $COUNT WHERE user_id = $CURRENT_USER_ID")
            UPDATE_PLAYED=$($PSQL "UPDATE users SET total_played = $OLD_TOTAL_PLAYED WHERE username = '$NAME'")
            echo -e "You guessed it in $COUNT tries. The secret number was $RAN_NUMBER. Nice job!"
        else
            if [[ ! $NUMBERS -gt $RAN_NUMBER ]];then
                echo "It's higher than that, guess again:"
                let COUNT=COUNT+1
                GUESS_GAME
              else
                echo "It's lower than that, guess again:"
                let COUNT=COUNT+1
                GUESS_GAME
            fi
        fi
    fi
}
GUESS_GAME