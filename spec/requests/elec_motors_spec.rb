require 'spec_helper'

describe "ElecMotors" do
  describe "GET /elec_motors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get elec_motors_path
      response.status.should be(200)
    end
  end
end
