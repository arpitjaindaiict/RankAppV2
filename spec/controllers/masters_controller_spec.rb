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

describe MastersController do

  # This should return the minimal set of attributes required to create a valid
  # Master. As you add validations to Master, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all masters as @masters" do
      master = Master.create! valid_attributes
      get :index
      assigns(:masters).should eq([master])
    end
  end

  describe "GET show" do
    it "assigns the requested master as @master" do
      master = Master.create! valid_attributes
      get :show, :id => master.id.to_s
      assigns(:master).should eq(master)
    end
  end

  describe "GET new" do
    it "assigns a new master as @master" do
      get :new
      assigns(:master).should be_a_new(Master)
    end
  end

  describe "GET edit" do
    it "assigns the requested master as @master" do
      master = Master.create! valid_attributes
      get :edit, :id => master.id.to_s
      assigns(:master).should eq(master)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Master" do
        expect {
          post :create, :master => valid_attributes
        }.to change(Master, :count).by(1)
      end

      it "assigns a newly created master as @master" do
        post :create, :master => valid_attributes
        assigns(:master).should be_a(Master)
        assigns(:master).should be_persisted
      end

      it "redirects to the created master" do
        post :create, :master => valid_attributes
        response.should redirect_to(Master.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved master as @master" do
        # Trigger the behavior that occurs when invalid params are submitted
        Master.any_instance.stub(:save).and_return(false)
        post :create, :master => {}
        assigns(:master).should be_a_new(Master)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Master.any_instance.stub(:save).and_return(false)
        post :create, :master => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested master" do
        master = Master.create! valid_attributes
        # Assuming there are no other masters in the database, this
        # specifies that the Master created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Master.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => master.id, :master => {'these' => 'params'}
      end

      it "assigns the requested master as @master" do
        master = Master.create! valid_attributes
        put :update, :id => master.id, :master => valid_attributes
        assigns(:master).should eq(master)
      end

      it "redirects to the master" do
        master = Master.create! valid_attributes
        put :update, :id => master.id, :master => valid_attributes
        response.should redirect_to(master)
      end
    end

    describe "with invalid params" do
      it "assigns the master as @master" do
        master = Master.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Master.any_instance.stub(:save).and_return(false)
        put :update, :id => master.id.to_s, :master => {}
        assigns(:master).should eq(master)
      end

      it "re-renders the 'edit' template" do
        master = Master.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Master.any_instance.stub(:save).and_return(false)
        put :update, :id => master.id.to_s, :master => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested master" do
      master = Master.create! valid_attributes
      expect {
        delete :destroy, :id => master.id.to_s
      }.to change(Master, :count).by(-1)
    end

    it "redirects to the masters list" do
      master = Master.create! valid_attributes
      delete :destroy, :id => master.id.to_s
      response.should redirect_to(masters_url)
    end
  end

end
