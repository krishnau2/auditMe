class ExpensesController < ApplicationController
  def index
  	
  end

  def new
    @expense = Expense.new
    3.times {@expense.expense_details.build}
  end

  def create
    @expense = Expense.create(params[:expense])
    redirect_to expense_path(@expense)
  end

  def show
  	@expense = Expense.find(params[:id])
  end

  def edit
  	@expense = Expense.find(params[:id])
  end

  def update
  	@expense = Expense.find(params[:id])
  	@expense.update_attributes(params[:expense])
  	redirect_to expense_path(@expense)
  end

end
