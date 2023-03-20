class HighSchoolSweetheart
  def self.first_letter(name)
    name.strip[0]
  end

  def self.initial(name)
    first_letter(name).upcase
  end

  def self.initials(name)
    name.split.map { |n| initial(n) }.join
  end
end
