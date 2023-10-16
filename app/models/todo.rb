class Todo < ApplicationRecord
  def formatted_created_at
    created_at.strftime("%Y-%m-%d")
  end
end
