require "./generator_help"

class Generator
  def initialize(exercise)
    stuff = GeneratorHelp.new(exercise).to_s
    exercise_snake = to_snake(exercise)
    file_name = "./exercises/practice/#{exercise}/spec/#{exercise_snake}_spec.cr"
    file = File.new(file_name, mode = "wb")
    File.write(file_name, stuff)
    system("crystal tool format #{file_name}")
  end

  def to_snake(input)
    input = input.gsub("-", "_")
    input
  end
end

if ARGV.empty?
  raise ArgumentError.new("Please provide an exercise")
end

Generator.new(ARGV[0])
