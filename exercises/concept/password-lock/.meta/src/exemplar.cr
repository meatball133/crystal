class PasswordLock
  def self.encrypt(password : (Int32 | String | Float64)) : (Int32 | String | Float64)
    if password.is_a?(Int32)
      (password / 2).round
    elsif password.is_a?(String)
      password.reverse
    else
      password * 4
    end
  end

  def initialize(password : (Int32 | String | Float64))
    @password = password
  end

  def encrypt
    @password = PasswordLock.encrypt(@password)
  end

  def unlock?(password_attempt : (Int32 | String | Float64)) : String | Nil
    if PasswordLock.encrypt(password_attempt) == @password
      "Unlocked"
    else
      nil
    end
  end
end
