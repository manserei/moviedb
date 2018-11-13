require 'rails_helper'

RSpec.describe ActorsController, type: :controller do
  let!(:actor) { create(:actor) }

  describe "GET index" do
    it "assigns @actors" do
      get :index
      expect(assigns(:actors)).to eq([actor])
    end
  end

  describe "GET show" do
    it "assigns @actor" do
      get :show, params: { id: actor.id }
      expect(assigns(:actor)).to eq(actor)
    end
  end
end
