class Egreso < ApplicationRecord
    belongs_to :proveedor

    paginates_per 10
end
