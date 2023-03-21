class HighSchoolSweetheart
  def self.clean_up_name(name)
    name.gsub(/[-_]/, ' ').strip
  end

  def self.first_letter(name)
    name.strip.first
  end

  def self.initial(name)
    first_letter(name).upcase + '.'
  end

  def self.pair(name1, name2)
    "
           ******       ******
         **      **   **      **
       **         ** **         **
      **            *            **
      **                         **
      **     #{initial(name1)}  +  #{initial(name2)}     **
       **                       **
         **                   **
           **               **
             **           **
               **       **
                 **   **
                   ***
                    *
      "
  end
end
