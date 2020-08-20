module OfficeWorkout
  class Bot < SlackRubyBot::Bot
    help do
      title '10 Minutes Office Workout'
      desc 'Randomly get 10 minutes workouts that can be done in the confort of your office.'

      command :get_workout do
        title 'get_workout'
        desc 'Returns a random link of YouTube workout that can be done at your office.'
        long_desc 'The competitiveness of professionals in the labor market, the fierce competition of companies, 
        the pursuit for increased productivity and the increasing demands of consumers form the perfect 
        set to expose individuals to high levels of tension and stress, compromising the quality of 
        life and the health of the workers. Therefore, programs designed for promoting health and 
        improving the quality of life of employees have become indispensable and must integrate 
        the culture of companies. This bot helps office workers and people who are working at home, 
        to reserve 10 minutos of their day and follow the random tutorial in order to achieve quality 
        of life.'
      end
    end
  end
end
