require 'string_nao_vazia'

describe String do

	it 'String pai vem vazia' do
		expect(subject).to eq('')
	end

	describe StringNaoVazia do
		it 'Não está vazia' do
			expect(subject).to eq ('Não sou vazio.')
		end
	end
end