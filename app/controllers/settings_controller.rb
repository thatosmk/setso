class SettingsController < ApplicationController
  layout "settings"
  before_action :authenticate_user!

  def profile
  end

  def notifications
  end

  def account
  end
end
