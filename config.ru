$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'workout_office'

OfficeWorkout::Bot.run
