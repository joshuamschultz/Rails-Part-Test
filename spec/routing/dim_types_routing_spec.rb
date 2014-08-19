require "rails_helper"

RSpec.describe DimTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dim_types").to route_to("dim_types#index")
    end

    it "routes to #new" do
      expect(:get => "/dim_types/new").to route_to("dim_types#new")
    end

    it "routes to #show" do
      expect(:get => "/dim_types/1").to route_to("dim_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dim_types/1/edit").to route_to("dim_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dim_types").to route_to("dim_types#create")
    end

    it "routes to #update" do
      expect(:put => "/dim_types/1").to route_to("dim_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dim_types/1").to route_to("dim_types#destroy", :id => "1")
    end

  end
end
