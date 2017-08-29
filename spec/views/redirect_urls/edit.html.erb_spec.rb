require 'rails_helper'

RSpec.describe "redirect_urls/edit", type: :view do
  before(:each) do
    @redirect_url = assign(:redirect_url, RedirectUrl.create!(
      :from => "MyString",
      :to => "MyString"
    ))
  end

  it "renders the edit redirect_url form" do
    render

    assert_select "form[action=?][method=?]", redirect_url_path(@redirect_url), "post" do

      assert_select "input[name=?]", "redirect_url[from]"

      assert_select "input[name=?]", "redirect_url[to]"
    end
  end
end
