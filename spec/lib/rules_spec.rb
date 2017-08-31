require 'rails_helper'

RSpec.describe Rules do
  let(:uri) {  URI( 'http://localhost/169188' ) }
  let(:matched_url) { "http://ios.rwdev.io/articles/169188" }
  subject(:rules) { Rules.new(uri) }

  before do
    RedirectUrl.create!(from: "^(?<_article_id_>\\d*)$", to: "http://ios.rwdev.io/articles/_article_id_")
  end

  describe "#lookup" do
    it 'find the url ok' do
      expect(subject.lookup).to eq matched_url
    end
  end
end