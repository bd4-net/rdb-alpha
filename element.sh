#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Check if an argument is provided
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

ARG=$1

# Determine if ARG is numeric
if [[ $ARG =~ ^[0-9]+$ ]]; then
  HELP=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$ARG;")
else
  HELP=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$ARG' OR name='$ARG';")
fi

# Check if element was found
if [[ -z $HELP ]]; then
  echo "I could not find that element in the database."
else
  AT_NO=$HELP
  NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$HELP")
  SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$HELP")
  SYMBOL_FORMATTED="($SYMBOL)"
  TYPE=$($PSQL "SELECT type FROM types FULL JOIN properties ON types.type_id=properties.type_id WHERE atomic_number=$HELP")
  AT_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$HELP")
  MELT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$HELP")
  BOIL=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$HELP")
  echo "The element with atomic number $AT_NO is $NAME $SYMBOL_FORMATTED. It's a $TYPE, with a mass of $AT_MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
fi
