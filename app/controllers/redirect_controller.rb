class RedirectController < ApplicationController
  protect_from_forgery except: :redirect

  def redirect
    #look up matching rule
    #redirect to url
    @redirect_url = Base64.decode64(params['url'])
  end
end
