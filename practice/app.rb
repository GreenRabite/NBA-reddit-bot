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
r_lakers = reddit.subreddit('lakers')
postHolder={}
posts = r_all.hot
posts.each do |post|
  postHolder[post.id] = post.title
  puts post.title
end
while true
  new_posts = reddit.subreddit('all').new
  new_posts.each do |post|
    if postHolder[post.id] == nil
      postHolder[post.id] = post.title
      puts post.title
    end
  end
end
# post = r_all.hot.first
# posts.each do |post|
#   puts post.title
# end
# post.comments.each do |comment|
#   puts comment.first
# end
# puts post.comments
