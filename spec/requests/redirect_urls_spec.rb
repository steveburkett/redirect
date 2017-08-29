require 'rails_helper'

RSpec.describe "RedirectUrls", type: :request do
  describe "GET /redirect_urls" do
    it "works! (now write some real specs)" do
      get redirect_urls_path
      expect(response).to have_http_status(200)
    end
  end
end
