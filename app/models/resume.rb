class Resume < ActiveRecord::Base
has_attached_file :avatar
belongs_to :user


	validates :user_id, presence: true
	validates :description, presence: true


end
