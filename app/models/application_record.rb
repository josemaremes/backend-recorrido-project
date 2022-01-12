# frozen_string_literal: true

# Modelo asociado a la applicaciòn principal
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
