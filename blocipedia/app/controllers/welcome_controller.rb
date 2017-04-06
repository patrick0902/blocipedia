class WelcomeController < ApplicationController
<<<<<<< HEAD
=======
  before_action :authenticate_user!, except: [:index]

>>>>>>> checkpoint-3-user-sign-in-out
  def index
  end
end
