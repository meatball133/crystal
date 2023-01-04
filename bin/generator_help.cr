require "liquid"
require "json"
require "http/client"

class GeneratorHelp
  @tpl : String | Nil

  def initialize(exercise : String)
    response = HTTP::Client.get("https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/#{exercise}/canonical-data.json")
    @json = JSON.parse(response.body)
    file = File.read("./exercises/practice/#{exercise}/.meta/template.liquid")
    ctx = Liquid::Context.new
    ctx.set "json", @json
    tpl = Liquid::Template.parse file
    @tpl = tpl.render ctx
  end

  def to_s
    @tpl
  end
end
