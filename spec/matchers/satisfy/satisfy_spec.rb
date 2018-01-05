describe 'satisfy' do
	it { expect(10).to satisfy {|v| v.even? } }

	it {
			expect(10).to satisfy('Usando satisfy em bloco') do |v|
				v += 1
				v -= 1
				v.even?
			end
		}
end