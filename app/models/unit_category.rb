class UnitCategory < ActiveYaml::Base
	include ActiveHash::Enum
	include ActiveYaml::Aliases
	
	set_root_path "#{Rails.root}/config/constants/"
	set_filename "unit_categories"

	include ActiveHash::Associations
    has_many :units
    has_many :measurements

	enum_accessor :name	

	def get_main_unit
		if self.units.length > 0
			return self.units.first
		end
		return false
	end
end
