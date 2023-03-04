module Test
  def self.main
    Dir.open("./exercises/practice").each do |dir|
      unless dir == "." || dir == ".."
        Dir.mkdir("/tmp/src/") unless Dir.exists?("/tmp/src/")
        Dir.mkdir("/tmp/spec/") unless Dir.exists?("/tmp/spec/")
        File.write("/tmp/src/#{dir.gsub("-", "_")}.cr", File.open("./exercises/practice/#{dir}/.meta/src/example.cr"))
        File.write("/tmp/spec/#{dir.gsub("-", "_")}_spec.cr", File.open("./exercises/practice/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr").gets_to_end.gsub("pending", "it"))
        system("crystal /tmp/spec/#{dir.gsub("-", "_")}_spec.cr")
      end
    end
  end
end

Test.main
