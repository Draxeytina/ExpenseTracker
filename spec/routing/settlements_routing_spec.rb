require "rails_helper"

RSpec.describe SettlementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/settlements").to route_to("settlements#index")
    end

    it "routes to #new" do
      expect(get: "/settlements/new").to route_to("settlements#new")
    end

    it "routes to #show" do
      expect(get: "/settlements/1").to route_to("settlements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/settlements/1/edit").to route_to("settlements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/settlements").to route_to("settlements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/settlements/1").to route_to("settlements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/settlements/1").to route_to("settlements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/settlements/1").to route_to("settlements#destroy", id: "1")
    end
  end
end
