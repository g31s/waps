Gem::Specification.new do |waps|
	waps.name 		  = "waps"
	waps.version	  = "0.1.1"
	waps.date 		  = "2019-07-05"
	waps.authors      = ["Gurjant Singh"]
	waps.email        = ["waps@defensestation.ca"]
	waps.summary      = %q{Gem to scan wirless access point}
	waps.description  = %q{Gem uses iwlist to scan and parse the response into ruby hash}
	waps.files		  = ["lib/waps.rb"]
	waps.homepage 	  = "https://github.com/gurjant31/waps"
	waps.extra_rdoc_files = ['README', 'README.md']
	waps.license 	  = "MIT"
	waps.add_development_dependency 'rspec', '~> 3.7'

end