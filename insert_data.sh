#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Insertar datos de teams
$PSQL "INSERT INTO teams (name)
VALUES
  ('Algeria'),
  ('Argentina'),
  ('Belgium'),
  ('Brazil'),
  ('Chile'),
  ('Colombia'),
  ('Costa Rica'),
  ('Croatia'),
  ('Denmark'),
  ('England'),
  ('France'),
  ('Germany'),
  ('Greece'),
  ('Japan'),
  ('Mexico'),
  ('Netherlands'),
  ('Nigeria'),
  ('Portugal'),
  ('Russia'),
  ('Spain'),
  ('Sweden'),
  ('Switzerland'),
  ('United States'),
  ('Uruguay');"

# Insertar datos de games
# $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
# VALUES
#   (2018, 'Final', 11, 8, 4, 2),
#   (2018, 'Third Place', 3, 10, 2, 0),
#   (2018, 'Semi-Final', 8, 10, 2, 1),
#   (2018, 'Semi-Final', 11, 3, 1, 0),
#   (2018, 'Quarter-Final', 8, 19, 3, 2),
#   (2018, 'Quarter-Final', 10, 21, 2, 0),
#   (2018, 'Quarter-Final', 3, 4, 2, 1),
#   (2018, 'Quarter-Final', 11, 24, 2, 0),
#   (2018, 'Eighth-Final', 10, 6, 2, 1),
#   (2018, 'Eighth-Final', 21, 22, 1, 0),
#   (2018, 'Eighth-Final', 3, 14, 3, 2),
#   (2018, 'Eighth-Final', 4, 15, 2, 0),
#   (2018, 'Eighth-Final', 8, 9, 2, 1),
#   (2018, 'Eighth-Final', 19, 20, 2, 1),
#   (2018, 'Eighth-Final', 24, 18, 2, 1),
#   (2018, 'Eighth-Final', 11, 2, 4, 3),
#   (2014, 'Final', 12, 2, 1, 0),
#   (2014, 'Third Place', 16, 4, 3, 0),
#   (2014, 'Semi-Final', 2, 16, 1, 0),
#   (2014, 'Semi-Final', 12, 4, 7, 1),
#   (2014, 'Quarter-Final', 16, 7, 1, 0),
#   (2014, 'Quarter-Final', 2, 3, 1, 0),
#   (2014, 'Quarter-Final', 4, 6, 2, 1),
#   (2014, 'Quarter-Final', 12, 11, 1, 0),
#   (2014, 'Eighth-Final', 4, 5, 2, 1),
#   (2014, 'Eighth-Final', 6, 24, 2, 0),
#   (2014, 'Eighth-Final', 11, 17, 2, 0),
#   (2014, 'Eighth-Final', 12, 1, 2, 1),
#   (2014, 'Eighth-Final', 16, 15, 2, 1),
#   (2014, 'Eighth-Final', 7, 13, 2, 1),
#   (2014, 'Eighth-Final', 2, 22, 1, 0),
#   (2014, 'Eighth-Final', 3, 23, 2, 1);"

$PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
VALUES
  (2018, 'Final', (SELECT team_id FROM teams WHERE name = 'France'), (SELECT team_id FROM teams WHERE name = 'Croatia'), 4, 2),
  (2018, 'Third Place', (SELECT team_id FROM teams WHERE name = 'Belgium'), (SELECT team_id FROM teams WHERE name = 'England'), 2, 0),
  (2018, 'Semi-Final', (SELECT team_id FROM teams WHERE name = 'Croatia'), (SELECT team_id FROM teams WHERE name = 'England'), 2, 1),
  (2018, 'Semi-Final', (SELECT team_id FROM teams WHERE name = 'France'), (SELECT team_id FROM teams WHERE name = 'Belgium'), 1, 0),
  (2018, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Croatia'), (SELECT team_id FROM teams WHERE name = 'Russia'), 3, 2),
  (2018, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'England'), (SELECT team_id FROM teams WHERE name = 'Sweden'), 2, 0),
  (2018, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Belgium'), (SELECT team_id FROM teams WHERE name = 'Brazil'), 2, 1),
  (2018, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'France'), (SELECT team_id FROM teams WHERE name = 'Uruguay'), 2, 0),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'England'), (SELECT team_id FROM teams WHERE name = 'Colombia'), 2, 1),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Sweden'), (SELECT team_id FROM teams WHERE name = 'Switzerland'), 1, 0),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Belgium'), (SELECT team_id FROM teams WHERE name = 'Japan'), 3, 2),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Brazil'), (SELECT team_id FROM teams WHERE name = 'Mexico'), 2, 0),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Croatia'), (SELECT team_id FROM teams WHERE name = 'Denmark'), 2, 1),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Russia'), (SELECT team_id FROM teams WHERE name = 'Spain'), 2, 1),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Uruguay'), (SELECT team_id FROM teams WHERE name = 'Portugal'), 2, 1),
  (2018, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'France'), (SELECT team_id FROM teams WHERE name = 'Argentina'), 4, 3),
  (2014, 'Final', (SELECT team_id FROM teams WHERE name = 'Germany'), (SELECT team_id FROM teams WHERE name = 'Argentina'), 1, 0),
  (2014, 'Third Place', (SELECT team_id FROM teams WHERE name = 'Netherlands'), (SELECT team_id FROM teams WHERE name = 'Brazil'), 3, 0),
  (2014, 'Semi-Final', (SELECT team_id FROM teams WHERE name = 'Argentina'), (SELECT team_id FROM teams WHERE name = 'Netherlands'), 1, 0),
  (2014, 'Semi-Final', (SELECT team_id FROM teams WHERE name = 'Germany'), (SELECT team_id FROM teams WHERE name = 'Brazil'), 7, 1),
  (2014, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Netherlands'), (SELECT team_id FROM teams WHERE name = 'Costa Rica'), 1, 0),
  (2014, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Argentina'), (SELECT team_id FROM teams WHERE name = 'Belgium'), 1, 0),
  (2014, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Brazil'), (SELECT team_id FROM teams WHERE name = 'Colombia'), 2, 1),
  (2014, 'Quarter-Final', (SELECT team_id FROM teams WHERE name = 'Germany'), (SELECT team_id FROM teams WHERE name = 'France'), 1, 0),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Brazil'), (SELECT team_id FROM teams WHERE name = 'Chile'), 2, 1),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Colombia'), (SELECT team_id FROM teams WHERE name = 'Uruguay'), 2, 0),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'France'), (SELECT team_id FROM teams WHERE name = 'Nigeria'), 2, 0),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Germany'), (SELECT team_id FROM teams WHERE name = 'Algeria'), 2, 1),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Netherlands'), (SELECT team_id FROM teams WHERE name = 'Mexico'), 2, 1),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Costa Rica'), (SELECT team_id FROM teams WHERE name = 'Greece'), 2, 1),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Argentina'), (SELECT team_id FROM teams WHERE name = 'Switzerland'), 1, 0),
  (2014, 'Eighth-Final', (SELECT team_id FROM teams WHERE name = 'Belgium'), (SELECT team_id FROM teams WHERE name = 'United States'), 2, 1);"

# Finalizar el script
echo Datos insertados exitosamente.