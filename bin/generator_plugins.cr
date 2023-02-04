# This file includes functions that are made for exclusive use by individual templates.
#

module GeneratorPlugins
  def binary_search_tree(tree, last = nil, depth = 0)
    p tree.class
    case tree
    when tree.as_h?
      p "hi"
      result = ""
      if tree == nil
        return ""
      end
      if tree["data"]?
        if last == nil
          result += "tree.value.should eq(#{tree["data"]})\n"
        elsif depth >= 2
          result += "#{last}_#{depth} = #{last}_#{depth - 1}.#{last}.not_nil!\n"
          result += "#{last}_#{depth}.value.should eq(#{tree["data"]})\n"
        else
          result += "#{last}_#{depth} = tree.#{last}.not_nil!\n"
          result += "#{last}_#{depth}.value.should eq(#{tree["data"]})\n"
        end
      end
      if tree["left"]?
        result += binary_search_tree(tree["left"], "left", depth + 1)
      else
        if last == nil
          result += "tree.left.should be_nil\n"
        else
          "#{last}_#{depth}.left.should be_nil\n"
        end
      end
      if tree["right"]?
        result += binary_search_tree(tree["right"], "right", depth + 1)
      else
        if last == nil
          result += "tree.right.should be_nil\n"
        else
          "#{last}_#{depth}.left.should be_nil\n"
        end
      end
      return result
    when Array
      return ""
    else
      return ""
    end
  end
end
