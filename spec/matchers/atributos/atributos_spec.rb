require 'pessoa'
RSpec::Matchers.define_negated_matcher :be_not_nil, :be_nil


describe 'Atributos' do
	before(:each) do
		@pessoa = Pessoa.new
	end

	# after(:each) do
	# 	# @pessoa = Pessoa.new
	# 	@pessoa.nome = 'LALALA'
	# 	puts @pessoa.inspect
	# end

	around(:each) do |teste|
		puts 'ANTES do Around'
		@pessoa = Pessoa.new

		teste.run

		@pessoa.nome = "Sem nome!"
		puts "DEPOIS do Around"
	end

  it 'have_attributes' do
    @pessoa.nome = 'Jackson'
    # @pessoa.nome = nil
    @pessoa.idade = 20
    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (a_value >= 20))
  end

  let(:pessoa_teste) do
  	pessoa_teste = Pessoa.new
  	pessoa_teste.nome = 'Rafael'
  	pessoa_teste.idade = 20
  	pessoa_teste
  end
  it {expect(pessoa_teste).to have_attributes(nome: be_not_nil, idade: (a_value >= 20))}

  it 'have_attributes' do
    @pessoa.nome = 'Jose'
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (a_value >= 20))
  end
end