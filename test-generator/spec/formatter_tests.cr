require "spec"
require "../src/formatter"
require "compiler/crystal/formatter"

describe "Format" do
  it "format files correctley" do
    content = File.read("./test-generator/spec/assets/format-files/format_file.cr")
    content = Crystal.format(content)
    content = Formatter.post_proccesing(content)
    content = Crystal.format(content)
    
    content.should eq(File.read("./test-generator/spec/assets/format-files/expected_format_file.cr"))
  end

  it "format etl correctley" do
    content = File.read("./test-generator/spec/assets/format-files/etl.cr")
    content = Crystal.format(content)
    content = Formatter.post_proccesing(content)
    content = Crystal.format(content)
    
    content.should eq(File.read("./test-generator/spec/assets/format-files/expected_etl.cr"))
  end
end
