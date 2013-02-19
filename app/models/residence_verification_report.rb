class ResidenceVerificationReport < ActiveRecord::Base
  # attr_accessible :title, :body
  store :assets_seen, accessor: [ :wallunit, :sofaset, :carpet, :fridge, :phone, :tv, :dining_table, :music_system, :others]
end
