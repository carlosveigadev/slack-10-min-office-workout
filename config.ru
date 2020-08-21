$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler'
require 'dotenv'
Dotenv.load

require 'office_workout'

OfficeWorkout::Bot.run
