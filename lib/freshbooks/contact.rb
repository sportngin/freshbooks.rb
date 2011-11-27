module FreshBooks
  class Contact < FreshBooks::Base

    define_schema do |s|
      s.fixnum :contact_id, :read_only => true
      s.string :username, :first_name, :last_name, :email
      s.string :phone1, :phone2
    end
  end
end