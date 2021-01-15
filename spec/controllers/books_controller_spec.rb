require "rails_helper"

RSpec.describe BooksController do
    describe "Get #index" do
        subject { get:index } 
        it "renders the index template" do
            expect(subject).to render_template("index")
        end

        it "does not render a different template" do
            expect(subject).to_not render_template("books/show") 
        end

        it "renders the application layout" do
            expect(subject).to render_template("layouts/application")
        end
    
    end

    describe "#create" do
        subject { post :create, :params => { :book => { :title => "Titulo", :author => "Autor", :status => "Prestado"}} }
        
        it "redirect to book_url(@book)" do
            expect(subject).to redirect_to(book_url(assigns(:book)))
        end
    end

end