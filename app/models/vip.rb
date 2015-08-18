class Vip < ActiveRecord::Base

	belongs_to :user

#require 'rubygems'
#require 'zapier_ruby'


 #after_create :welcome_new_user

  #def welcome_new_user
  #    ZapierRuby.configure do |c|
  #    c.web_hooks = {example_zap: "b75gl2"}
  #    c.enable_logging = true


  #  zapper = ZapierRuby::Zapper.new(:example_zap)
  #  if zapper.zap({name: :name, title: "arnold", email: "markus@gmail.com", month: "July"})

  #puts "zapped it"
#else
 #puts "it remains unzapped"
#end



  #end


	  #subscribe_me_using :email, :name => :full_name, :list => :whiskers
#end
end
