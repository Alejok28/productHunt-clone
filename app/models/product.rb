# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Product < ApplicationRecord
	belongs_to :user
	validates :name, presence: true
	validates :url, presence: true
end
