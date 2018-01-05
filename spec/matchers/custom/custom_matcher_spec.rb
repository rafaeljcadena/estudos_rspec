RSpec::Matchers.define :be_a_multiple_of do |expected|

	# expected == 3
	# actual == subject == 18
	match do |actual|
		actual % expected == 0
	end

	# Custom message for errors in matcher test
	failure_message do |actual|
		"custom error message for be a multiple of #{expected}"
	end

	# Custom message for description matcher test
	description do
		"be a multiple of #{expected}"
	end

end

describe 17, 'Custom Matcher' do
	it { is_expected.to be_a_multiple_of(3)}
end