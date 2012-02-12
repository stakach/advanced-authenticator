class UserGroup < ActiveRecord::Base
	
	belongs_to	:user
	belongs_to	:group
	
	
	protected
	
	
	validates_presence_of :user, :group
	
end

#
# Mix in any project specific code
#
UserGroup.class_eval &Login.ug_mixin unless Login.ug_mixin.nil?