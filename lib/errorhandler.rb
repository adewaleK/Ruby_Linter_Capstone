class StyleError
  def missing_brackets_round_arguments(lines)
    puts ''
    puts '***** AMBIGOUS METHODS *****'
    res_arr = []
    lines.each_with_index do |k, index|
      arr = k.split(' ')
      if k.include?('def') and arr.length > 2 and !arr[-1].include?(')')
        msg = "Missing brackets '()' around argument(s) on line #{index + 1}: all arguments must be enclosed within a bracket "
        res_arr << msg
      end
    end
    res_arr
  end

  def indentation(lines)
    puts ''
    puts '***** INDENTATION ERRORS *****'
    error_array = []
    my_array = ['if', 'def', '{', 'class', 'module', 'unless']
    spaces = 0
    space_hash = { 1 => 0 }
    lines.each_with_index do |x, index|
      if my_array.any? { |y| x.match(/^\s*#{y}/) }
        spaces += 2
        space_hash[index + 2] = spaces
      elsif x.include?('end') || x.include?('}')
        spaces -= 2
        space_hash[index + 1] = spaces
      end
    end
    space_hash.each do |x, y|
      error_array.push("StyleError:Indentation at Line no. #{x}  Indentations required: #{y}") if lines[x - 1].match(/^\s{#{y + 1}}[\w]*/)
    end
    error_array
  end
end
