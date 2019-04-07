class Waps

	def initialize(interface_name)
		@interface_name = interface_name
		@output = []
	end

	def scan
		raw_input = run_command
		@output = parse(raw_input)
	end

	def parse(raw_input)
		cells = raw_input.split("Cell")[1..-1]

		cells.map { |cell|  parse_cell(cell)}
	end

	def run_command
		`sudo iwlist #{@interface_name} scan` 
	end


	def parse_cell(cell)
		raw_data = cell.split("\n")
		result = { 
			address: paddress(raw_data[0]),
			channel: pchannel(raw_data[1]),
			frequency: pfrequency(raw_data[2]),
			quality: pquality(raw_data[3]),
			signal_level: psignal_level(raw_data[3]),
			encryption_key: pencryption_key(raw_data[4]),
			ssid: pssid(raw_data[5])
		}
	end

	
	#Parse Values from the raw data. All methods below
	

	def paddress(data)
		data.split("Address:")[-1].delete(" ")
	end

	def pchannel(data)
		data.split(":")[-1]
	end

	def pfrequency(data)
		data.split(":")[-1].split(" ")[0]
	end

	def pquality(data)
		data.split(" ")[0].split("=")[-1]
	end

	def psignal_level(data)
		data.split(" ")[2].split("=")[-1] + " dBm"
	end

	def pencryption_key(data)
		data.split(":")[-1]
	end

	def pssid(data)
		data.split('"').count == 1 ? "" : data.split('"')[-1] 
	end


	
	#Find methods
	

	def get(find)
		result = []
		if @output[0].keys.include? find.to_sym && !@output.empty? 
			result = @output.map { |cell| cell[find.to_sym] }
		end
		result
	end

end

