class Micropost < ActiveRecord::Base
	#attr_accessible :content, :user_id
	#validates :content, :length=>{ :maximum => 140}
	validates :content, :length=>{ :maximum=>14}
	belongs_to :user
	def Micropost_params
		param.require(:Micropost).permit(:content, :user_id)

	end
end
