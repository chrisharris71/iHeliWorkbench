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

describe ExhaustsController do

  # This should return the minimal set of attributes required to create a valid
  # Exhaust. As you add validations to Exhaust, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExhaustsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all exhausts as @exhausts" do
      exhaust = Exhaust.create! valid_attributes
      get :index, {}, valid_session
      assigns(:exhausts).should eq([exhaust])
    end
  end

  describe "GET show" do
    it "assigns the requested exhaust as @exhaust" do
      exhaust = Exhaust.create! valid_attributes
      get :show, {:id => exhaust.to_param}, valid_session
      assigns(:exhaust).should eq(exhaust)
    end
  end

  describe "GET new" do
    it "assigns a new exhaust as @exhaust" do
      get :new, {}, valid_session
      assigns(:exhaust).should be_a_new(Exhaust)
    end
  end

  describe "GET edit" do
    it "assigns the requested exhaust as @exhaust" do
      exhaust = Exhaust.create! valid_attributes
      get :edit, {:id => exhaust.to_param}, valid_session
      assigns(:exhaust).should eq(exhaust)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Exhaust" do
        expect {
          post :create, {:exhaust => valid_attributes}, valid_session
        }.to change(Exhaust, :count).by(1)
      end

      it "assigns a newly created exhaust as @exhaust" do
        post :create, {:exhaust => valid_attributes}, valid_session
        assigns(:exhaust).should be_a(Exhaust)
        assigns(:exhaust).should be_persisted
      end

      it "redirects to the created exhaust" do
        post :create, {:exhaust => valid_attributes}, valid_session
        response.should redirect_to(Exhaust.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved exhaust as @exhaust" do
        # Trigger the behavior that occurs when invalid params are submitted
        Exhaust.any_instance.stub(:save).and_return(false)
        post :create, {:exhaust => {}}, valid_session
        assigns(:exhaust).should be_a_new(Exhaust)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Exhaust.any_instance.stub(:save).and_return(false)
        post :create, {:exhaust => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested exhaust" do
        exhaust = Exhaust.create! valid_attributes
        # Assuming there are no other exhausts in the database, this
        # specifies that the Exhaust created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Exhaust.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => exhaust.to_param, :exhaust => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested exhaust as @exhaust" do
        exhaust = Exhaust.create! valid_attributes
        put :update, {:id => exhaust.to_param, :exhaust => valid_attributes}, valid_session
        assigns(:exhaust).should eq(exhaust)
      end

      it "redirects to the exhaust" do
        exhaust = Exhaust.create! valid_attributes
        put :update, {:id => exhaust.to_param, :exhaust => valid_attributes}, valid_session
        response.should redirect_to(exhaust)
      end
    end

    describe "with invalid params" do
      it "assigns the exhaust as @exhaust" do
        exhaust = Exhaust.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Exhaust.any_instance.stub(:save).and_return(false)
        put :update, {:id => exhaust.to_param, :exhaust => {}}, valid_session
        assigns(:exhaust).should eq(exhaust)
      end

      it "re-renders the 'edit' template" do
        exhaust = Exhaust.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Exhaust.any_instance.stub(:save).and_return(false)
        put :update, {:id => exhaust.to_param, :exhaust => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested exhaust" do
      exhaust = Exhaust.create! valid_attributes
      expect {
        delete :destroy, {:id => exhaust.to_param}, valid_session
      }.to change(Exhaust, :count).by(-1)
    end

    it "redirects to the exhausts list" do
      exhaust = Exhaust.create! valid_attributes
      delete :destroy, {:id => exhaust.to_param}, valid_session
      response.should redirect_to(exhausts_url)
    end
  end

end
