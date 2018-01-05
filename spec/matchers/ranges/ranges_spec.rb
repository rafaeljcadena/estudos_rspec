describe (1..5), "Ranges" do
	it '#cover' do
		expect(subject).to cover(1,3)
		is_expected.to cover(1,3)
		# expect(subject).not_to cover(0,6)
	end

	it { is_expected.to cover(1,5) }
	it { is_expected.not_to cover(6,9) }
end