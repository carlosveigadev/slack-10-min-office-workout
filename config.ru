$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'office_workout'

OfficeWorkout::Bot.run
