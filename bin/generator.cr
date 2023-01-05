require "./generator_help"

class Generator
  def initialize(exercise)
    stuff = GeneratorHelp.new(exercise).to_s
    exercise_snake = exercise.gsub("-", "_")
    raise "Spec directory not found: ./exercises/practice/#{exercise}/spec" unless Dir.exists?("./exercises/practice/#{exercise}/spec")
    file_name = "./exercises/practice/#{exercise}/spec/#{exercise_snake}_spec.cr"
    file = File.new(file_name, mode = "wb")
    File.write(file_name, stuff)
    system("crystal tool format #{file_name}")
  end
end

if ARGV.empty?
  raise ArgumentError.new("Please provide an exercise")
end

Generator.new(ARGV[0])
