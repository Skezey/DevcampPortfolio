module CurrentUserConcern
  extend ActiveSupport::Concern

  #if user is not logged in as defined by User model, user is Guest
  def current_user
    super || OpenStruct.new(name: "Guest",
                            first_name: "Guest",
                            last_name: "Guest",
                            email: "guest@yourmom.com"
                          )
  end

end
