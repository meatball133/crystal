require "ecr"
require "json"

class GenerateStarts
    def initialize
        @exercise = Array
        @concept = Array
    end

    def generate_exercises
        json = JSON.parse(File.read("./config.json"))
        json["exercises"]["practice"].as_a.each do |exercise|
            File.exsist?("exercises/practice/#{exercise["slug"]}/.meta/test_template.ecr")
            JSON.parse(File.read("./exercises/practice/#{exercise["slug"]}/.approaches/config.json"))
            JSON.parse(File.read("./exercises/practice/#{exercise["slug"]}/.articles/config.json"))

            File

            @exercise << {slug: exercise["slug"].to_s, name: exercise["name"].to_s, practices: exercise["practices"].as_a, prerequisites: exercise["prerequisites"].as_a, difficulty: exercise["difficulty"].as_i, status: exercise["status"].to_s, test: test["test"].to_s}

            {slug: exercise["slug"].to_s, name: exercise["name"].to_s, practices: exercise["practices"].as_a, prerequisites: exercise["prerequisites"].as_a, difficulty: exercise["difficulty"].as_i, status: exercise["status"].to_s}
        end
    end

    ECR.def_to_s "./bin/templates/template.ecr"
end