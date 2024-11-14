class Category < ApplicationRecord
  # Adicione validações se necessário
  validates :name, presence: true
  
  # Para debug
  after_initialize do |category|
    Rails.logger.debug "New category initialized: #{category.attributes}"
  end

  before_save do |category|
    Rails.logger.debug "About to save category: #{category.attributes}"
  end
end