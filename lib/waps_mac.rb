require 'open3'

class Waps_mac

	def initialize
	end

	def scan
		raw_input = run_command
		@output = (raw_input.keys.include? :error) ? raw_input : parse(raw_input[:output])
	end

	def parse(raw_input)
		cells = raw_input.split("\n")[1..-1]

		cells.map { |cell|  parse_cell(cell)}
	end

	def run_command
		output,error,status = Open3.capture3("/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s")
		return output == "" ? {error: error} : {output: output}
	end


	def parse_cell(cell)
		raw_data = cell.split(" ")
		result = { 
			address: raw_data[1],
			channel: raw_data[3],
			signal_level: raw_data[2],
			encryption_key: pencryption_key(raw_data[6]),
			ssid: raw_data[0]
		}
	end

	
	#Parse Values from the raw data. All methods below
	
	def pencryption_key(data)
		data == "NONE" ? "off" : "On"
	end




	

end

