require 'pessoa'


shared_examples 'Shared Statuse' do |sentimento|
  it "#{sentimento}"  do
		pessoa.send("#{sentimento}!")
		expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
	end
end


describe 'Pessoa' do
	subject(:pessoa) {Pessoa.new}

	it_behaves_like 'Shared Statuse', :feliz
	it_behaves_like 'Shared Statuse', :triste
	it_behaves_like 'Shared Statuse', :contente
	
	# it 'status feliz!' do
	# 	pessoa.feliz!
	# 	expect(pessoa.status).to eq("Sentindo-se Feliz!")
	# end

	# it 'status triste!' do
	# 	pessoa.triste!
	# 	expect(pessoa.status).to eq("Sentindo-se Triste!")
	# end
	
	# it 'status contente!' do
	# 	pessoa.contente!
	# 	expect(pessoa.status).to eq("Sentindo-se Contente!")
	# end
end