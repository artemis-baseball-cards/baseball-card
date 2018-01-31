class PagesController < ApplicationController
  def show
    @employees = Employee.all
    render template: "pages/#{params[:page]}"
  end
end
