class PasswordLock
  def initialize(password : (Int32 | String | Float64))
    @password = "password"
  end

  def encrypt_password()
    password = @passwords
    if password.is_a?(Int32)
      password = (password / 2).round
    elsif password.is_a?(String)
      password = password.reverse
    elsif password.is_a?(Float64)
      password *= 4
    end
    @password = password
  end

  def unlock?(password_attempt : (Int32 | String | Float64)) : String | Nil
    if encrypt_password(password_attempt) == @password
      return "Unlocked"
    else
      return nil
    end
  end
end
