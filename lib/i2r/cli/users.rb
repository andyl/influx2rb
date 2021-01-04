class I2r::Cli::Users < I2r::Cli::Base

  desc "list", "List users"

  def list
    puts "THE USERS List Task"
  end

  desc "create", "Create a user"

  def create
    puts "THE USERS Create Task"
  end

  desc "destroy", "Destroy a user"

  def destroy
    puts "THE USERS Destroy Task"
  end

end
