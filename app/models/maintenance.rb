class Maintenance < ApplicationRecord
  belongs_to :engine
  belongs_to :city
  belongs_to :material
  belongs_to :user

  enum maintenance_type: {
    preventive: 'Preventivo',
    corrective: 'Correctivo'
  }
end
