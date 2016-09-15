class Contact < ApplicationRecord
  belongs_to :user
  def friendly_updated_at
    updated_at.strftime('%b %m, %Y')
  end

  def full_name
    first_name + " " + middle_name.to_s + " " + last_name
  end

  def regional_phone_number
    "+81 " + phone_number.to_s
  end
end
