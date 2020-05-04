
# TODO:

# Destroy messages, users and channels (in that order)
# Create some channels (general, paris, react for instance)
# Create some users (needs email / password)
# Create some messages in several channels.

puts 'Clearing database...'

Message.destroy_all
User.destroy_all
Channel.destroy_all

puts 'Creating users...'

users = [
  {email: "user1@ham.edu", password: "password"},
  {email: "user2@ham.edu", password: "password"},
  {email: "user3@ham.edu", password: "password"}
]

User.create(users)

puts 'Creating channels...'

channels = [
  {name:"paris"},
  {name:"react"},
  {name:"general"}
]

Channel.create(channels)

puts 'Creating messages...'

message = {
  user_id: 1,
  channel_id: 4,
  content: "I can't believe this worked!"
}

Message.create(message)

puts 'Finished creating users, channels, and messages'
