# This file includes functions that are made for exclusive use by individual templates.
#

module GeneratorPlugins
  def strain(function : String) : String
    if function[9..].includes?("contains")
        return "x.includes?(5)"
    elsif function[9..].includes?("starts_with")
        return "x.starts_with?('z')"
    end
    function[9..]
  end
end
