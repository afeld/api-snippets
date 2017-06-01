require('twilio-ruby')

accountSid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
authToken = 'your_auth_token'

client = Twilio::REST::Client.new(accountSid, authToken)
service = client.sync.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

begin
  response = service.sync_lists('MyFirstList')
    .sync_list_permissions('bob').fetch
  puts response
rescue Twilio::REST::TwilioException => err
  puts err
end
