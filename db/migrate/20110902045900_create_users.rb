class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.references :auth_source,	:allow_null => false
			
			t.string	:identifier,	:allow_null => false
			t.string	:description
			t.text		:notes
			
			t.boolean	:system_admin,	:allow_null => false,	:default => false	# Access to everything. Privilege map still stands
			
			t.timestamps
		end
	end
end
