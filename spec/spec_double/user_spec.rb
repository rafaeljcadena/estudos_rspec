describe 'Test Double' do
	it '--' do
		user = double('User')
		allow(user).to receive_messages(name: 'Rafael', password: 'secret')
		puts user.inspect
		user.name
		user.password
	end

	it 'as_null_object' do
		user = double('User').as_null_object
		allow(user).to receive(:name).and_return("Rafael")
		allow(user).to receive(:password).and_return('Secret')
		puts user.name
		puts user.password
		user.abc

	end
end