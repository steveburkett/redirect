class RedirectController < ApplicationController
  protect_from_forgery except: :redirect

  def redirect
    url = Base64.decode64(params['url'])

    #look up matching rule
    #redirect to url

    redirect_to url
  end
end
