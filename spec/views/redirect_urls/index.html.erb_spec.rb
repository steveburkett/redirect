require 'rails_helper'

RSpec.describe "redirect_urls/index", type: :view do
  before(:each) do
    assign(:redirect_urls, [
      RedirectUrl.create!(
        :from => "From",
        :to => "To"
      ),
      RedirectUrl.create!(
        :from => "From",
        :to => "To"
      )
    ])
  end

  it "renders a list of redirect_urls" do
    render
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
  end
end
