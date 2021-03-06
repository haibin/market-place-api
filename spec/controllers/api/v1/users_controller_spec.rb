# frozen_string_literal: true
# spec/controllers/api/v1/users_controller_spec.rb

require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.marketplace.v1" }
  describe "GET #show" do 
    before(:each) do
      @user = FactoryBot.create :user
      get :show, params: { id: @user.id, format: :json} 
    end
    
    it "returns the information about a reporter on a hash" do 
      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response[:email]).to eql @user.email
    end
    
    it { expect(response).to be_success } 
  end
end
