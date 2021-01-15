require 'rails_helper'

RSpec.describe Book, :type => :model do
    it 'is valid with valid attributes' do
        book = Book.new(title:"Titulo", author:"Autor", status:"En estante")
        expect(book).to be_valid
    end
end