class HomeController < ApplicationController
  def main
    @user = User.new
  end
end
