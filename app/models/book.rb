class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :status, presence: true

    enum status: [:Prestado, :'En estante']
    ransacker :status, formatter: proc {|v| statuses[v]} do |parent|
        parent.table[:status]
    end
end
