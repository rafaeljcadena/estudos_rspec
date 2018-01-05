require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do

    #Setup
    student = Student.new
    
    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end

  it 'Mocks with args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'Verifica se o método for chamado duas vezes' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'Verifica se o método for chamado duas vezes' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    puts student.foo(123)
  end
end