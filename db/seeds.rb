# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hash_careers = {
			"SPCG" => "Communication Grad",
			"CNED" => "Continuing Education",
			"CGRD" => "Continuing Education Grad",
			"CNCR" => "Continuing Noncredit",
			"EDG"	 => "Education Grad",
			"MGMT" => "J L Kellogg School Management",
			"JRNG" => "Journalism Grad",
			"EMP"	 => "Kellogg Executive Masters Prog",
			"LAW"	 => "Law",
			"ENGG" => "McCormick Engg Grad",
			"MUSG" => "Music Grad",
			"NDGR" => "Non-Degree",
			"PT" => "Physical Therapy",
			"PA" => "Physician Assistant",
			"PO" => "Prosthetics Orthotics",
			"TGS" => "The Graduate School",
			"UGRD" => "Undergraduate",
		}    

    hash_careers.each { |key, value|
    	Career.create :career => key, :title => value
}