class AuthenticateApiUser

  attr_reader :token, :user

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    @user = User.find_by_email(@email)
    raise ApiError.new "User not found" unless @user
    raise ApiError.new "Password invalid" unless @user.valid_password?(@password)
    @token = JsonWebToken.encode(user_id: @user.id)
    self
  end

end