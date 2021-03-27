# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'creating dummy data to test associations'

# puts 'creating week'
# Week.create(start: 'March 28, 2021', finish: 'April 3, 2021')
# Week.create(start: 'April 4, 2021', finish: 'April 10, 2021')
# Week.create(start: 'April 11, 2021', finish: 'April 17, 2021')
# Week.create(start: 'April 18, 2021', finish: 'April 24, 2021')

# puts 'creating workouts'
# Workout.create(week_id: 1, user_id: 1, date: 'March 29, 2021', duration: '20 minutes', workout_type: 'cardio')
# Workout.create(week_id: 1, user_id: 1, date: 'March 31, 2021', duration: '40 minutes', workout_type: 'strength')
# Workout.create(week_id: 2, user_id: 1, date: 'April 5, 2021', duration: '30 minutes', workout_type: 'yoga')

# puts 'creating exercise'
# Exercise.create(workout_id: 1, name: 'jogging')
# Exercise.create(workout_id: 2, name: 'Bench Press', sets: 3, repetitions: 10)
# Exercise.create(workout_id: 3, name: "Child's Pose")

# puts 'creating Meals'
# Meal.create(date: 'March 29, 2021', name: 'snack', description: 'Fruit smoothie from Starbucks')

puts 'creating foods'
Food.create(user_id: 1, meal_id: 1, name: 'banana', food_group: 'fruit', nutrient: 'carbs')
Food.create(user_id: 1, meal_id: 1, name: 'Peanut Butter', food_group: 'legumes', nutrient:'fat and protein')

puts 'finsihed seeding dummy data'