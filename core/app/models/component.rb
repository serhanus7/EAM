class Component < ApplicationRecord
  belongs_to :editor
  belongs_to :manager
end
