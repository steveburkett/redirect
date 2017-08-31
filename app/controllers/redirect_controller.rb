class RedirectController < ApplicationController
  protect_from_forgery except: :redirect

  def redirect
    uri = URI(request.url)

    binding.pry
    new_url = Rules.new(uri).lookup

    redirect_to new_url
  end
end
