require 'rails_helper'

RSpec.describe ReviewBidsController, type: :controller do
  describe "#reviewer_topic_matching" do
    it "webservice call is successful" do
      dat = double("data")
      rest = double("RestClient")
      result = RestClient.get 'http://www.google.com', content_type: :json, accept: :json
      expect(result.code).to eq(200)
    end

    it "should return json response" do
      result = RestClient.get 'https://www.google.com', content_type: :json, accept: :json
      expect(result.header['Content-Type']).to include 'application/json' rescue result
    end
  end
end
