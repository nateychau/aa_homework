class House < ApplicationRecord
    validates :address, presence: true

    has_many(
        :people,
        class_name: :Person,
        foreign_key: :house_id,
        primary_key: :id #House's primary key
    )
end