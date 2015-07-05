class Host < ActiveRecord::Base
  geocoded_by :full_street_address
  after_validation :geocode, if: ->(obj) { obj.full_street_address.present? and (obj.street_address_changed? || obj.city_changed? || obj.country_changed?) }
  has_many :events, dependent: :destroy

  def to_s
    "#{name}"
  end

  def full_street_address
    [street_address, city, country].compact.join(', ')
  end
end
