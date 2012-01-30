module FreshBooks
  class Recurring < FreshBooks::Base
    define_schema do |s|
      s.string :first_name, :last_name, :organization, :p_street1, :p_street2, :p_city
      s.string :p_state, :p_country, :p_code, :lines, :notes, :terms, :frequency, :po_number
      s.date :date
      s.fixnum :recurring_id, :client_id, :occurrences
      s.float :discount, :amount
      s.array :contact
      s.array :lines
      s.boolean :stopped, :send_email, :send_snail_mail
      s.string :return_uri
      s.object :autobill
    end

    actions :list, :get, :create, :update, :delete
  end
end
