class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(params[:expense])
    redirect_to new_expense_path
  end

end
