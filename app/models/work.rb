class Work < ApplicationRecord
    belongs_to :user
    has_many :work_tag_relations, dependent: :destroy
    has_many :tags, through: :work_tag_relations, dependent: :destroy
end
