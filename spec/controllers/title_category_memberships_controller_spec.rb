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

describe TitleCategoryMembershipsController do

  # This should return the minimal set of attributes required to create a valid
  # TitleCategoryMembership. As you add validations to TitleCategoryMembership, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TitleCategoryMembershipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all title_category_memberships as @title_category_memberships" do
      title_category_membership = TitleCategoryMembership.create! valid_attributes
      get :index, {}, valid_session
      assigns(:title_category_memberships).should eq([title_category_membership])
    end
  end

  describe "GET show" do
    it "assigns the requested title_category_membership as @title_category_membership" do
      title_category_membership = TitleCategoryMembership.create! valid_attributes
      get :show, {:id => title_category_membership.to_param}, valid_session
      assigns(:title_category_membership).should eq(title_category_membership)
    end
  end

  describe "GET new" do
    it "assigns a new title_category_membership as @title_category_membership" do
      get :new, {}, valid_session
      assigns(:title_category_membership).should be_a_new(TitleCategoryMembership)
    end
  end

  describe "GET edit" do
    it "assigns the requested title_category_membership as @title_category_membership" do
      title_category_membership = TitleCategoryMembership.create! valid_attributes
      get :edit, {:id => title_category_membership.to_param}, valid_session
      assigns(:title_category_membership).should eq(title_category_membership)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TitleCategoryMembership" do
        expect {
          post :create, {:title_category_membership => valid_attributes}, valid_session
        }.to change(TitleCategoryMembership, :count).by(1)
      end

      it "assigns a newly created title_category_membership as @title_category_membership" do
        post :create, {:title_category_membership => valid_attributes}, valid_session
        assigns(:title_category_membership).should be_a(TitleCategoryMembership)
        assigns(:title_category_membership).should be_persisted
      end

      it "redirects to the created title_category_membership" do
        post :create, {:title_category_membership => valid_attributes}, valid_session
        response.should redirect_to(TitleCategoryMembership.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved title_category_membership as @title_category_membership" do
        # Trigger the behavior that occurs when invalid params are submitted
        TitleCategoryMembership.any_instance.stub(:save).and_return(false)
        post :create, {:title_category_membership => { "title" => "invalid value" }}, valid_session
        assigns(:title_category_membership).should be_a_new(TitleCategoryMembership)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TitleCategoryMembership.any_instance.stub(:save).and_return(false)
        post :create, {:title_category_membership => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested title_category_membership" do
        title_category_membership = TitleCategoryMembership.create! valid_attributes
        # Assuming there are no other title_category_memberships in the database, this
        # specifies that the TitleCategoryMembership created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TitleCategoryMembership.any_instance.should_receive(:update_attributes).with({ "title" => "" })
        put :update, {:id => title_category_membership.to_param, :title_category_membership => { "title" => "" }}, valid_session
      end

      it "assigns the requested title_category_membership as @title_category_membership" do
        title_category_membership = TitleCategoryMembership.create! valid_attributes
        put :update, {:id => title_category_membership.to_param, :title_category_membership => valid_attributes}, valid_session
        assigns(:title_category_membership).should eq(title_category_membership)
      end

      it "redirects to the title_category_membership" do
        title_category_membership = TitleCategoryMembership.create! valid_attributes
        put :update, {:id => title_category_membership.to_param, :title_category_membership => valid_attributes}, valid_session
        response.should redirect_to(title_category_membership)
      end
    end

    describe "with invalid params" do
      it "assigns the title_category_membership as @title_category_membership" do
        title_category_membership = TitleCategoryMembership.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TitleCategoryMembership.any_instance.stub(:save).and_return(false)
        put :update, {:id => title_category_membership.to_param, :title_category_membership => { "title" => "invalid value" }}, valid_session
        assigns(:title_category_membership).should eq(title_category_membership)
      end

      it "re-renders the 'edit' template" do
        title_category_membership = TitleCategoryMembership.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TitleCategoryMembership.any_instance.stub(:save).and_return(false)
        put :update, {:id => title_category_membership.to_param, :title_category_membership => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested title_category_membership" do
      title_category_membership = TitleCategoryMembership.create! valid_attributes
      expect {
        delete :destroy, {:id => title_category_membership.to_param}, valid_session
      }.to change(TitleCategoryMembership, :count).by(-1)
    end

    it "redirects to the title_category_memberships list" do
      title_category_membership = TitleCategoryMembership.create! valid_attributes
      delete :destroy, {:id => title_category_membership.to_param}, valid_session
      response.should redirect_to(title_category_memberships_url)
    end
  end

end