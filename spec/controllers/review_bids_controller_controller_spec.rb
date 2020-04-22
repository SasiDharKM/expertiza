require 'rails_helper'

RSpec.describe ReviewBidsController, type: :controller do
  describe "#assign" do

  end

  describe "#reviewer_topic_matching" do
    it "webservice call should be successful" do
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

  describe '#review_bid' do
    #it "should render sign_up_sheet/review_bid" do
    #  expect(controller).to render_template("sign_up_sheet/review_bid")
    #end
  end

  describe '#assign_review_priority' do
    #if there is no bid
    it "should create an new RevideBid entry" do
      #params[:participant_id] = 35917
      post :assign_review_priority, :paraticipant_id
      expect(response).to change(Review.count)
    end

    #if there is a bid
    it "should update the priorities of the entries"

  end
end
