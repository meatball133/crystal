require "ecr/macros"
require "json"
require "http/client"
require "./generator"

class GeneratorHelp
  def initialize(exercise : String)
    response = HTTP::Client.get("https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/#{exercise}/canonical-data.json")
    @json = JSON.parse(response.body)
    @first = true
  end

  def to_snake(input)
    result = ""
    input.each_char do |x|
      result += x.upcase == x ? "_#{x.downcase}" : x
    end
    result
  end

  def to_captlized(input)
    result = ""
    input = input.capitalize
    capitalized = false
    input.each_char do |x|
      if x == '-'
        capitalized = true
      else
        result += capitalized ? x.upcase : x
        capitalized = false
      end
    end
    result
  end

  def status
    if @first
      @first = false
      return "it"
    end
    "pending"
  end

  ECR.def_to_s "./exercises/practice/resistor-color/.meta/template.ecr"
end
