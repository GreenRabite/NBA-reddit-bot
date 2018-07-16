require 'bundler/setup'
require 'redd'

reddit = Redd.it(
  user_agent: 'Redd:MyFancyBot:v1.2.3',
  client_id:  'dos4DGsWQUutXg',
  secret:     '[the apps secret]',
  username:   '[your bot account username]',
  password:   '[your bot account password]'
)
