class Cliente < ApplicationRecord
    has_many :ingreso

    paginates_per 10
end
