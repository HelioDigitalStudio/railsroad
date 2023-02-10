class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :stylesheet ]

  def home
  end

  def stylesheet
  end
end
