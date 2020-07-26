class Bank < ApplicationRecord
    belongs_to :city
    searchkick

  def search_data
    attributes.merge(
        name: name,
        city_name: city(&:name)
    )
  end
end
