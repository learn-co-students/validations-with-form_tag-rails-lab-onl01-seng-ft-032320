class Author < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true#, format: { without: /[0-9]/, message: "does not allow numbers" }
    validates :email, uniqueness: true
    validates :phone_number, length: { is: 10 }
end
