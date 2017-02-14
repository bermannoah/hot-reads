require 'rails_helper'

describe LinksController, type: :controller do
  context "index" do
    scenario "it shows the right page" do
      get :index
      
      expect(response).to have_http_status(200)
    end
  end
end