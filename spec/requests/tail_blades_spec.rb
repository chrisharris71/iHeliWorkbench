require 'spec_helper'

describe "TailBlades" do
  describe "GET /tail_blades" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tail_blades_path
      response.status.should be(200)
    end
  end
end
