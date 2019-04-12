Gem::Specification.new do |waps|
	waps.name 		  = "waps"
	waps.version	  = "1.0.1"
	waps.date 		  = "2019-12-05"
	waps.authors      = ["Gurjant Singh"]
	waps.email        = ["info@defensestation.ca"]
	waps.summary      = %q{Gem to scan wirless access point}
	waps.description  = %q{Gem scans Wireless Access Points and return ruby hash}
	waps.files		  = ["lib/waps.rb","lib/waps_linux.rb","lib/waps_mac.rb"]
	waps.homepage 	  = "https://github.com/gurjant31/waps"
	waps.extra_rdoc_files = ['README.md']
	waps.license 	  = "MIT"
	waps.add_development_dependency 'rspec', '~> 3.7'

end