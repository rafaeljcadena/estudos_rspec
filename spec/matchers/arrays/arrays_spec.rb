RSpec::Matchers.define_negated_matcher :exclude, :include 

describe Array.new([1,2,3]), key: 'collection' do
	it '#include' do
		expect(subject).to include(2,1)
	end

	it 'exclude' do 
		expect(subject).to exclude(3,4)
	end

	it '#match_array', slow: true do
		expect(subject).to match_array([1,2,3])
		expect(subject).to match_array([1,3,2])
	end

	it '#contain_exactly' do
		expect(subject).to contain_exactly(1,2,3)
	end
end