require 'rails_helper'

RSpec.describe "redirect_urls/show", type: :view do
  before(:each) do
    @redirect_url = assign(:redirect_url, RedirectUrl.create!(
      :from => "From",
      :to => "To"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/From/)
    expect(rendered).to match(/To/)
  end
end
