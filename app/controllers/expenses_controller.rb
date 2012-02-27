class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    3.times {@expense.expense_details.build}
  end

  def create
    @expense = Expense.create(params[:expense])
    redirect_to new_expense_path
  end

end
