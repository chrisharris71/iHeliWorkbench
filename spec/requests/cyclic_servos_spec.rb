require 'spec_helper'

describe "CyclicServos" do
  describe "GET /cyclic_servos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cyclic_servos_path
      response.status.should be(200)
    end
  end
end
