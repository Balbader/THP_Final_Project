class TriviaUsersController < ApplicationController
    before_action :authenticate_user!
end
