require "rails_helper"

RSpec.describe RedirectUrlsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/redirect_urls").to route_to("redirect_urls#index")
    end

    it "routes to #new" do
      expect(:get => "/redirect_urls/new").to route_to("redirect_urls#new")
    end

    it "routes to #show" do
      expect(:get => "/redirect_urls/1").to route_to("redirect_urls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/redirect_urls/1/edit").to route_to("redirect_urls#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/redirect_urls").to route_to("redirect_urls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/redirect_urls/1").to route_to("redirect_urls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/redirect_urls/1").to route_to("redirect_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/redirect_urls/1").to route_to("redirect_urls#destroy", :id => "1")
    end

  end
end
