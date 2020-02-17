require 'rails_helper'

RSpec.describe PropertiesController, type: :controller do
  describe "properties#index" do
    it "Should successfully load index page" do
      get :index
      expect(response).to have_http_status :success
    end
  end
  describe "properties#show" do
    it "Should be able to successfully load show page" do
      account=Account.create!(email: "dillon@knights.ucf.edu", :password => "dummy123")
      property= Property.create(:account_id => account.id)
      get :show, params: {:id => property.id}
      expect(response).to have_http_status :success
    end
  end
end
