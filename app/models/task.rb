class Task < ActiveRecord::Base
  scope :completed, -> {where(is_done:true)} #filtra las tareas en true
  scope :start_with, ->(word) { where("name like ?", "#{word}%") } #filtrar por tipo letra
  
  belongs_to :account
end
