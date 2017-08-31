# A url redirector 

Built with Rails 5 and ruby 2.3.1

# To run 
1.  bundle install
1.  bundle exec rail s 
1.  visit localhost:3000 to test

# How I tested locally
1.  *bundle exec rspec spec*   #local specs are the first line of defence :)
1. To test end to end, I: 
    1.  set up a rule in this app to redirect:
        1.  from: "(?<_article_id_>\\d+)"
        1.  to: "http://google.com"   
    1. 'sudo rails s -p 80'   #you have to run sudo to bind to port 80 
    1.  add '127.0.0.1       written.rwdev.io' to hosts file
    1.  sudo killall -HUP mDNSResponder   #to reset local dns
    1.  enter 'http://written.rwdev.io/169188' in chrome
    1.  it successfully directed from ^ to google.com