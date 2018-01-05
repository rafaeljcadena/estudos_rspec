describe 'Matcher Output' do 
	it {expect{puts 'Rafael'}.to output.to_stdout}
	it {expect{print 'Rafael'}.to output("Rafael").to_stdout}
	it {expect{print 'Rafael'}.to output(/Rafael/).to_stdout}

	it {expect{warn 'Rafael'}.to output.to_stderr}
	it {expect{warn 'Rafael'}.to output("Rafael\n").to_stderr}
	it {expect{warn 'Rafael'}.to output(/Rafael/).to_stderr}
end