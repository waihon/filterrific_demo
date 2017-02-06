class StudentsController < ApplicationController

  def index
    session[:referrer] = url_for()

    @searches = Search.all

    @filterrific = initialize_filterrific(
      Student,
      filter_settings,
      :select_options => {
        sorted_by: Student.options_for_sorted_by,
        with_country_id: Country.options_for_select
      }
    ) or return
    @students = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end

private

  def filter_settings
    if params[:filterrific].present?
      params[:filterrific]
    elsif params[:search_id].present?
      search = Search.find_by(id: params[:search_id])
      search ? eval(search.filter) : Student.default_filter_params
    else
      Student.default_filter_params
    end
  end
end
