# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Answer.destroy_all
Average.destroy_all
Question.destroy_all
Type.destroy_all
User.destroy_all

user1 = User.create!({
  name: "Ash",
  username: "qwerty",
  password: "12345678",
  counter: 0})

user2 = User.create!({
    name: "Moana",
    username: "moana",
    password: "12345678",
    counter: 2 })

type1 = Type.create!({
  :title => "Bath",
  :value => 25})

type2 = Type.create!({
    :title => "Shower",
    :value => 19})

question1 = Question.create!({
  :title => "How long do you usually take to bathe?"
  })

  question2 = Question.create!({
    :title => "How long do you usually take to shower?"
    })

  ans1 = Answer.create!({
    :result => 30,
    :question_id => question1.id,
    :user_id => user1.id})

  ans2 = Answer.create!({
      :result => 15,
      :question_id => question2.id,
      :user_id => user1.id})
