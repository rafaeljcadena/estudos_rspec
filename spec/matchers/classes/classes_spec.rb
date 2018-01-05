require 'string_nao_vazia'

describe 'Matchers de classes' do
	it 'be_instance_of' do
		expect(10).to be_instance_of(Integer) # Exatamente a classe
	end

	it 'be_kind_of' do
		expect(10).to be_kind_of(Integer) # Pode ser herança
	end

	it 'be_a / be_an ' do
		str = StringNaoVazia.new
		expect(str).to be_an(String)
		expect(str).to be_an(StringNaoVazia)

		expect(str).to be_a(String)
		expect(str).to be_a(StringNaoVazia)
	end
		
	it 'respond_to' do
		expect('rafael').to respond_to(:size)
	end


end
