class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  def complete
    @loan = User.find params[:id]
    # Authorization checks go here
    @loan.date_out = "0001-01-01"
    @loan.save
    # Redirection go here
  end

  def uncomplete
    @loan = User.find params[:id]
    # Authorization checks go here
    @loan.facebook_uid = nil
    @loan.save
    # Redirection go here
  end

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
    @loans_waiting = Loan.where(:date_out => "0001-01-01")
    @loans_complete = Loan.where.not(:date_out => "0001-01-01")
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = Loan.new
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)

    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_loan
    @loan = Loan.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def loan_params

    defaults = {date_in: Time.now.strftime("%d/%m/%Y %H:%M"), date_out: "0001-01-01 00:00:00", librarian_id: current_user.id}
    params.require(:loan).permit(:item_id, :user_id, :date_in, :date_out, :librarian_id).reverse_merge(defaults)

  end
end
