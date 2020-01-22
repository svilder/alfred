class ToDoListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @to_do_lists = ToDoList.all
  end


end
