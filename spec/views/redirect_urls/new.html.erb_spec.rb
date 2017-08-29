require 'rails_helper'

RSpec.describe "redirect_urls/new", type: :view do
  before(:each) do
    assign(:redirect_url, RedirectUrl.new(
      :from => "MyString",
      :to => "MyString"
    ))
  end

  it "renders new redirect_url form" do
    render

    assert_select "form[action=?][method=?]", redirect_urls_path, "post" do

      assert_select "input[name=?]", "redirect_url[from]"

      assert_select "input[name=?]", "redirect_url[to]"
    end
  end
end
