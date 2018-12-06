class Article < ApplicationRecord
	validates :title, uniqueness: true
	validates :validated, acceptance: { message: 'must be accepted' }
end
