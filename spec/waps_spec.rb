require 'waps'

RSpec.describe Waps do 

	describe '#scan' do 

		it 'it returns empty array when no key matches' do
			new_scan = Wasp.new('test')
			result = new_scan.get('test')
			expect(result.empty?).to be(true)
		end

		it 'it return scan results' do 
			new_scan = Wasp.new('')
			result = new_scan.scan
			expect(result.empty?).to be(false)
		end

	end

end