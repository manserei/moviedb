require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe "GET index" do
    it "assigns @movies" do
      movie = create(:movie)
      get :index
      expect(assigns(:movies)).to eq([movie])
    end
  end
end
