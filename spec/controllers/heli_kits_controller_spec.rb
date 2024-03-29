require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HeliKitsController do

  # This should return the minimal set of attributes required to create a valid
  # HeliKit. As you add validations to HeliKit, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HeliKitsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all heli_kits as @heli_kits" do
      heli_kit = HeliKit.create! valid_attributes
      get :index, {}, valid_session
      assigns(:heli_kits).should eq([heli_kit])
    end
  end

  describe "GET show" do
    it "assigns the requested heli_kit as @heli_kit" do
      heli_kit = HeliKit.create! valid_attributes
      get :show, {:id => heli_kit.to_param}, valid_session
      assigns(:heli_kit).should eq(heli_kit)
    end
  end

  describe "GET new" do
    it "assigns a new heli_kit as @heli_kit" do
      get :new, {}, valid_session
      assigns(:heli_kit).should be_a_new(HeliKit)
    end
  end

  describe "GET edit" do
    it "assigns the requested heli_kit as @heli_kit" do
      heli_kit = HeliKit.create! valid_attributes
      get :edit, {:id => heli_kit.to_param}, valid_session
      assigns(:heli_kit).should eq(heli_kit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HeliKit" do
        expect {
          post :create, {:heli_kit => valid_attributes}, valid_session
        }.to change(HeliKit, :count).by(1)
      end

      it "assigns a newly created heli_kit as @heli_kit" do
        post :create, {:heli_kit => valid_attributes}, valid_session
        assigns(:heli_kit).should be_a(HeliKit)
        assigns(:heli_kit).should be_persisted
      end

      it "redirects to the created heli_kit" do
        post :create, {:heli_kit => valid_attributes}, valid_session
        response.should redirect_to(HeliKit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved heli_kit as @heli_kit" do
        # Trigger the behavior that occurs when invalid params are submitted
        HeliKit.any_instance.stub(:save).and_return(false)
        post :create, {:heli_kit => {}}, valid_session
        assigns(:heli_kit).should be_a_new(HeliKit)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HeliKit.any_instance.stub(:save).and_return(false)
        post :create, {:heli_kit => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested heli_kit" do
        heli_kit = HeliKit.create! valid_attributes
        # Assuming there are no other heli_kits in the database, this
        # specifies that the HeliKit created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HeliKit.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => heli_kit.to_param, :heli_kit => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested heli_kit as @heli_kit" do
        heli_kit = HeliKit.create! valid_attributes
        put :update, {:id => heli_kit.to_param, :heli_kit => valid_attributes}, valid_session
        assigns(:heli_kit).should eq(heli_kit)
      end

      it "redirects to the heli_kit" do
        heli_kit = HeliKit.create! valid_attributes
        put :update, {:id => heli_kit.to_param, :heli_kit => valid_attributes}, valid_session
        response.should redirect_to(heli_kit)
      end
    end

    describe "with invalid params" do
      it "assigns the heli_kit as @heli_kit" do
        heli_kit = HeliKit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HeliKit.any_instance.stub(:save).and_return(false)
        put :update, {:id => heli_kit.to_param, :heli_kit => {}}, valid_session
        assigns(:heli_kit).should eq(heli_kit)
      end

      it "re-renders the 'edit' template" do
        heli_kit = HeliKit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HeliKit.any_instance.stub(:save).and_return(false)
        put :update, {:id => heli_kit.to_param, :heli_kit => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested heli_kit" do
      heli_kit = HeliKit.create! valid_attributes
      expect {
        delete :destroy, {:id => heli_kit.to_param}, valid_session
      }.to change(HeliKit, :count).by(-1)
    end

    it "redirects to the heli_kits list" do
      heli_kit = HeliKit.create! valid_attributes
      delete :destroy, {:id => heli_kit.to_param}, valid_session
      response.should redirect_to(heli_kits_url)
    end
  end

end
