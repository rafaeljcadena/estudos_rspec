$counter = 0

describe 'let' do 
	let(:count) { $counter +=1 }

	it 'memoriza o valor' do
		expect(count).to eq(1) #1 vez é cacheado
		expect(count).to eq(1) #2 vez não é cachehado
	end

	it 'não é cacheado entre os teste' do
		expect(count).to eq(2)
	end
end