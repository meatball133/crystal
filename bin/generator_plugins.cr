# This file includes functions that are made for exclusive use by individual templates.
#

module GeneratorPlugins
  def binary_search_tree(tree, last = [] of String) : String
    case tree
    when tree.as_h?
      result = ""
      return "" if tree == nil
      if tree["data"]?
        if last.size == 0
          result += "tree.value.should eq(#{tree["data"]})\n"
        elsif last.size == 1
          result += "#{last[-1]} = tree.#{last[-1]}.not_nil!
          #{last[-1]}.value.should eq(#{tree["data"]})\n"
        else
          result += "#{last.join("_")} = #{last[...-1].join("_")}.#{last[-1]}.not_nil!
          #{last.join("_")}.value.should eq(#{tree["data"]})\n"
        end
      end
      if tree["left"]?
        result += binary_search_tree(tree["left"], [*last, "left"])
      end
      if tree["right"]?
        result += binary_search_tree(tree["right"], [*last, "right"])
      end
      result
    else
      ""
    end
  end
end
