class Ingreso < ApplicationRecord
    belongs_to :cliente
    paginates_per 10
end
