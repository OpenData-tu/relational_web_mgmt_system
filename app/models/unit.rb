class Unit < ActiveYaml::Base
	include ActiveHash::Enum
	include ActiveYaml::Aliases
	
	set_root_path "#{Rails.root}/config/constants/"
	set_filename "units"

	include ActiveHash::Associations
    belongs_to :unit_category
    has_many :measurements

	enum_accessor :name
end
