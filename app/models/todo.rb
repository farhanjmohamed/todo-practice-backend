class Todo < ApplicationRecord
  def formatted_date
    date.strftime("%Y-%m-%d")
  end
end
