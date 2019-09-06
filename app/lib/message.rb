class Message

  # GENERIC SERVER MESSAGES

  def self.successful_request
    "Fetch request successful"
  end

  def self.update_failed
    "Update failed"
  end

  # AUTHENTICATION MESSAGES
  def self.not_found(record = 'record')
    "Sorry, #{record} not found."
  end

  def self.invalid_credentials
    'Invalid Credentials'
  end

  def self.invalid_token
    'Invalid Token'
  end

  def self.missing_token
    'Missing Token'
  end

  def self.unauthorized
    'Unauthorized Request'
  end

  def self.authorized_user
    "Authorized User"
  end

  def self.account_created
    'Account created successfully'
  end

  def self.account_not_created
    'Account could not be created'
  end

  def self.login_success
    "Successful Login"
  end

  def self.expired_token
    'Sorry, your token has expired. Please login to continue.'
  end

  # TODO MESSAGES
  def self.todo_created
    "Todo created successfully"
  end

  def self.todo_failed
    "Todo unable to be created"
  end

  def self.todo_updated
    "Todo successfully updated"
  end

  def self.todo_destroyed
    "Todo destroyed"
  end

  # PROJECT MESSAGES
  def self.project_created
    "Project successfully created"
  end

  def self.project_failed
    "Project unable to be created"
  end

  def self.project_updated
    "Project successfully updated"
  end

  def self.project_destroyed
    "Project destroyed"
  end

end
