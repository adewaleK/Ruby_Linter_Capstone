# rubocop:disable Layout/LineLength
require './lib/filevalidator.rb'
require './lib/errorhandler.rb'

describe FileValidation do
  describe '#file_exist(file)' do
    it 'Returns true if file exists' do
      file = FileValidation.new
      expect(file.file_exist('./lib/errorhandler.rb')).to eql(true)
    end
  end
  describe '#file_exist(file)' do
    it 'Returns Nil if file does not exists' do
      file = FileValidation.new
      expect(file.file_exist('./lib/extra.rb')).to eql(nil)
    end
  end
end

describe StyleError do
  describe 'missing_brackets_round_arguments' do
    it 'Returns Empty Array if There is No Any Ambigous Method found i.e Methods Whose Arguments Aren"t enclosed Within Brackets' do
      validate = StyleError.new
      lines = ["def first_method\n", "def my_method(arg)\n", "def my_method(arg1, arg2)\n", "def my_method(arg1, arg2, arg3)\n"]
      expect(validate.missing_brackets_round_arguments(lines)).to eql([])
    end
    it 'Returns Array with messages if Ambigous methods found' do
      validate = StyleError.new
      lines = ["def first_method arg\n", "def my_method(arg)\n", "def my_method(arg1, arg2)\n", "def my_method arg1, arg2, arg3\n"]
      expect(validate.missing_brackets_round_arguments(lines)).to eql(["Missing brackets '()' around argument(s) on line 1: all arguments must be enclosed within a bracket ", "Missing brackets '()' around argument(s) on line 4: all arguments must be enclosed within a bracket "])
    end
  end
end

describe StyleError do
  describe 'Indentation' do
    it 'Returns Empty Array if No Indentation Error found' do
      validate = StyleError.new
      lines = ["class TestClass\n", "  def my_method\n", "    if true\n", "      puts 'Yes'\n", "      puts 'False' if false\n", "      if false\n", "        puts 'Again false'\n", "      end\n", "    end\n", "  end\n", 'end']
      expect(validate.indentation(lines)).to eql([])
    end
    it 'Returns Array with messages if Indentations found' do
      validate = StyleError.new
      lines = ["class TestClass\n", "  def my_method\n", "    if true\n", "      puts 'Yes'\n", "      puts 'False' if false\n", "      if false\n", "          puts 'Again false'\n", "      end\n", "     end\n", "  end\n", 'end']
      expect(validate.indentation(lines)).to eql(['StyleError:Indentation at Line no. 7  Indentations required: 8', 'StyleError:Indentation at Line no. 9  Indentations required: 4'])
    end
  end
end
# rubocop:enable Layout/LineLength
