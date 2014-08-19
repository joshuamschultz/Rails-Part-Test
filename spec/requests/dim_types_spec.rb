require 'rails_helper'

RSpec.describe "DimTypes", :type => :request do
  describe "GET /dim_types" do
    it "works! (now write some real specs)" do
      get dim_types_path
      expect(response.status).to be(200)
    end
  end
end
