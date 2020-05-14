class AwsText < ApplicationRecord
    validates :title, presense: true
    validates :content, presence: true
end
