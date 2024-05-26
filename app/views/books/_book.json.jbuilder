json.extract! book, :id, :title, :author_id, :gener, :ISBN, :publisher_id, :price, :stock_quantity, :created_at, :updated_at
json.url book_url(book, format: :json)
