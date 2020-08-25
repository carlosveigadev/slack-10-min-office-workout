$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler'
require 'dotenv'
Dotenv.load

require_relative 'bin/main.rb'

OfficeWorkout::Bot.run
