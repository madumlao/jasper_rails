class VoucherAccountsController < ApplicationController
  before_action :set_voucher_account, only: [:show,:edit,:update,:destroy]

  def help
  end
  
  def index
    @voucher_accounts = VoucherAccount.all
  end
  
  def show
  end
  
  def new
    @voucher_account = VoucherAccount.new
  end
  
  def edit
  end
  
  def create
    @voucher_account = VoucherAccount.new(voucher_account_params)

    respond_to do |format|
      if @voucher_account.save
        format.html { redirect_to @voucher_account, notice: 'Voucher Account was successfully created.' }
        format.json { render :show, status: :created, location: @voucher_account }
      else
        format.html { render :new }
        format.json { render json: @voucher_account.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @voucher_account.update(voucher_account_params)
        format.html { redirect_to @voucher_account, notice: 'Voucher Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @voucher_account }
      else
        format.html { render :edit }
        format.json { render json: @voucher_account.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @voucher_account.destroy
    respond_to do |format|
      format.html { redirect_to voucher_accounts_url, notice: 'Voucher Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_voucher_account
    @voucher_account = VoucherAccount.find(params[:id])
  end
  def voucher_account_params
    params.require(:voucher_account).permit(:name)
  end
end
