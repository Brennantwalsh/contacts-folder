class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime('%b %m, %Y')
  end

  def full_name
    first_name + " " + last_name
  end

  def regional_phone_number
    "+81 " + phone_number
  end
end
