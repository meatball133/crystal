require "./generator.cr"

class Generator

    def initialize
        @document_generator = DocumentGenerator.new()
        @document_generator.read_documents("./concepts")
    end

    def generate_all
        Dir.new("./concepts").each_child do |doc|
            generate_doc(doc)
            @document_generator.links = [] of String
        end

        Dir.new("./exercises/concept").each_child do |exercise|
            generate_exercise_doc(exercise)
            @document_generator.links = [] of String
        end
    end

    def generate_doc(doc)
        path_template = Path.new("concepts", doc, ".meta", "template.md")

        template = File.read(path_template)
        content = @document_generator.load_template(template)

        File.write("./concepts/#{doc}/introduction.md", content)
    end

    def generate_exercise_doc(exercise)
        path_template = Path.new("exercises", "concept", exercise, ".meta", "template.md")

        template = File.read(path_template)
        content = @document_generator.load_template(template)

        File.write("./exercises/concept/#{exercise}/.docs/introduction.md", content)
    end
end