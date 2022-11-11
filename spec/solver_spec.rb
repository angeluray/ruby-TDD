class Solver
  def factorial(n)
    (2..n).reduce(1, :*)
  end

  def if_negative(n)
    return unless n < 0

    raise Exception, 'The number should not be less than 0'
  end

  def reverse(str)
    return unless str.is_a? String

    str.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 and n % 5 == 0
      'fizzbuzz'
    elsif n % 3 == 0
      'fizz'
    elsif n % 5 == 0
      'buzz'
    else
      n.to_s
    end
  end
end

describe Solver do
  context 'When test Solver class' do
    describe '#factorial' do
      it 'returns the factorial of a number' do
        create_factorial = Solver.new
        factorial = create_factorial.factorial(5)
        expect(factorial).to eql 120
      end
    end

    describe '#if_negative' do
      it 'Returns an exception' do
        create_factorial = Solver.new
        expect { create_factorial.if_negative(-1) }.to raise_exception('The number should not be less than 0')
      end
    end

    describe '#reverse' do
      it 'Returns a given string reversed' do
        reverse_instance = Solver.new
        reverse_str = reverse_instance.reverse('hello')
        expect(reverse_str).to eq('olleh')
        expect(reverse_str).to be_kind_of String
      end

      it 'Returns Nill if the input is not a String' do
        reverse_instance = Solver.new
        expect(reverse_instance.reverse(1)).to be_nil
      end
    end

    describe '#Fizzbuz' do
      it "Should return 'Fizz' if it is divisible by 3" do
        fizzbuzz_instance = Solver.new
        expect(fizzbuzz_instance.fizzbuzz(6)).to eq 'fizz'
      end

      it "Should return 'Buzz' if it is divisible by 5" do
        fizzbuzz_instance = Solver.new
        expect(fizzbuzz_instance.fizzbuzz(10)).to eq 'buzz'
      end

      it "Should return 'fizzbuzz' if it is divisible by 3 and 5" do
        fizzbuzz_instance = Solver.new
        expect(fizzbuzz_instance.fizzbuzz(15)).to eq 'fizzbuzz'
      end

      it "Should return 'fizzbuzz' if it is divisible by 3 and 5" do
        fizzbuzz_instance = Solver.new
        expect(fizzbuzz_instance.fizzbuzz(7)).to be_kind_of String
        expect(fizzbuzz_instance.fizzbuzz(7)).to eq '7'
      end
    end
  end
end
