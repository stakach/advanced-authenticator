require "login/engine"
require "security_transgression"

module Login
	
	def self.redirection(&block)
		@redirect_to = block if block
		@redirect_to
	end
	def self.redirection=(proc)
		@redirect_to = proc
	end
	
	
	def self.user_mixin(&block)
		@user_mixin = block if block
		@user_mixin
	end
	
	def self.group_mixin(&block)
		@group_mixin = block if block
		@group_mixin
	end
	
	def self.ug_mixin(&block)
		@ug_mixin = block if block
		@ug_mixin
	end
	
	@@title = ""
	mattr_accessor :title
	
end

require "models/auth_source.rb"
require "models/auth_source_ldap.rb"
require "models/auth_source_local.rb"
require "models/group.rb"
require "models/user.rb"
require "models/user_group.rb"

