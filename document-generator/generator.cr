class DocumentGenerator
    alias Docs = Hash(String, Hash(String, Hash(String, String) | String))
    @documents : Docs
    def initialize  
        @documents = Docs.new
    end

    def read_documents(path)
        Dir.new(path).each_child do |folder|
            Dir.new(Path.new(path, folder)).each_child do |file|
                if file == "about.md"
                    p read_markdown(File.read(Path.new(path, folder, file)))
                end
            end
        end
    end

    private def read_markdown(content : String)
        data = Hash(String, Hash(String, String)).new
        #data["content"] = content
        data["chapter"] = {} of String => String
        name = ""

        content.split("\n").each do |line|
            if line.starts_with?("#")
                name = line.lstrip("# ")
                data["chapter"][name] = line + "\n"
            else
                data["chapter"][name] += line + "\n"
            end
        end
        return data
    end

    def load_template(path : String)
        content = File.read(path)
        
    end
end

document = DocumentGenerator.new 
document.read_documents("./concepts")
