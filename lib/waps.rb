require './lib/waps_linux.rb'
require './lib/waps_mac.rb'


class Waps

	def initialize(interface_name = '')
		@interface_name = interface_name
		@output = []
	end

	def scan
		if RUBY_PLATFORM =~ /win32/
		  return {error: "Not support for windows. Coming Soon."}
		elsif RUBY_PLATFORM =~ /linux/
		  new_scan = Waps_linux.new(@interface_name)
		  return @output = new_scan.scan
		elsif RUBY_PLATFORM =~ /darwin/
		  new_scan = Waps_mac.new
		  return @output = new_scan.scan
		else
		  return {error: "No support for this OS."}
		end
	end


	
	#Find methods
	

	def get(find)
		if (@output[0].keys.include? find.to_sym) && !@output.empty? 
			return @output.map { |cell| cell[find.to_sym] }
		end
	end


end

