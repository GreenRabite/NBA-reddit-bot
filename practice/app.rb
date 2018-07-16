require 'bundler/setup'
require 'redd'

reddit = Redd.it(
  user_agent: 'Redd:MyFancyBot:v1.2.3',
  client_id:  ENV['REDDIT_ID'],
  secret:     ENV['REDDIT_SECRET'],
  username:   ENV['REDDIT_NAME'],
  password:   ENV['REDDIT_PW']
)

r_all = reddit.subreddit('all')
post = r_all.hot.first
puts post.title
