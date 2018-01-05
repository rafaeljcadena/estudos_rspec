require 'Calculator'


describe Calculator, 'Testando calculadora' do

	context '#div' do
	  it 'error: ZeroDivisionError' do

	  	# Precisa usar um bloco no caso de um método.
	  	expect{subject.div(2,0)}.to raise_error(ZeroDivisionError)
	  	expect{subject.div(2,0)}.to raise_error("divided by 0")
	  	expect{subject.div(2,0)}.to raise_error(ZeroDivisionError, "divided by 0")
	  	expect{subject.div(2,0)}.to raise_error(/divided/)
	  end
	end
	
	context '#sum' do
		it '2 positive numbers' do
			result = subject.sum(4, 4)
			expect(result).to eq(8)
		end

		it 'negative and positive numbers' do
			result = subject.sum(-4, 4)
			expect(result).to eq(0)
		end

		it 'negative numbers' do
			result = subject.sum(-4, -4)
			expect(result).to eq(-8)
		end

	end
end