require 'rails_helper'
require 'faker'


RSpec.describe ContentsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Content. As you add validations to Content, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
        title: Faker::Lorem.sentence,
        summary: Faker::LordOfTheRings.quote,
        published_date: Time.now,
        content: Faker::Lorem.paragraph(10),
        author: Faker::Name.name
    }
  }

  let(:invalid_attributes) {
    {
        title: '',
        published_date: Time.now,
        content: Faker::Lorem.paragraph(10),
        author: nil
    }
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all contents as @contents" do
      content = Content.create! valid_attributes
      get :index, {}
      expect(assigns(:contents)).to eq([content])
    end
  end

  describe "GET show" do
    it "assigns the requested content as @content" do
      content = Content.create! valid_attributes
      get :show, params: {id: content.to_param}
      expect(assigns(:content)).to eq(content)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Content" do
        expect {
          post :create, params: {content: valid_attributes}
        }.to change(Content, :count).by(1)
      end

      it "assigns a newly created content as @content" do
        post :create, params: {content: valid_attributes}
        expect(assigns(:content)).to be_a(Content)
        expect(assigns(:content)).to be_persisted
      end

      it "redirects to the created content" do
        post :create, params: {content: valid_attributes}
        expect(response.status).to eql(201)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved content as @content" do
        post :create, params: {content: invalid_attributes}
        expect(assigns(:content)).to be_a_new(Content)
      end

      it "re-renders the 'new' template" do
        post :create, params: {content: invalid_attributes}
        expect(response.status).to eql(422)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {
            title: Faker::Lorem.sentence
        }
      }

      it "updates the requested group" do
        content = Content.create! valid_attributes
        put :update, params: {id: content.to_param, content: new_attributes}
        content.reload
      end

      it "assigns the requested content as @content" do
        content = Content.create! valid_attributes
        put :update, params: {id: content.to_param, content: valid_attributes}
        expect(assigns(:content)).to eq(content)
      end

      it "redirects to the content" do
        content = Content.create! valid_attributes
        put :update, params: {id: content.to_param, content: valid_attributes}
        expect(response.status).to eql(200)
      end
    end

    describe "with invalid params" do
      it "assigns the content as @content" do
        content = Content.create! valid_attributes
        put :update, params: {id: content.to_param, content: invalid_attributes}
        expect(assigns(:content)).to eq(content)
      end

      it "re-renders the 'edit' template" do
        content = Content.create! valid_attributes
        put :update, params: {id: content.to_param, content: invalid_attributes}
        expect(response.status).to eql(422)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested content" do
      content = Content.create! valid_attributes
      expect {
        delete :destroy, params: {id: content.to_param}
      }.to change(Content, :count).by(-1)
    end

    it "redirects to the contents list" do
      content = Content.create! valid_attributes
      delete :destroy, params: {id: content.to_param}
      expect(response.status).to eql(204)
    end
  end

end