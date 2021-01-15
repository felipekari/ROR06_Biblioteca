json.extract! book, :id, :title, :author, :status, :borrowing_date, :givenback_date, :created_at, :updated_at
json.url book_url(book, format: :json)
