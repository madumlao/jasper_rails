class VouchersController < ApplicationController
  before_action :set_voucher, only: [:show, :edit, :update, :destroy]

  def dashboard

    #load accounts
    @accounts= VoucherAccount.all
      	
    #group accounts into columns
    @columncount=4.0;
  	@accountgroups=[];
  	@accountspergroup=(@accounts.count/@columncount).ceil;
  	(0...@accountspergroup).each do |i|
  	  (0...@columncount).each do |j|
    	  @accountgroups[j] ||= []
  	    @accountgroups[j].push(@accounts[j*@accountspergroup+i]);
  	  end
  	end
#      	
#    //auto set date to today, unless date is specified
#    $requestparams=$request->getParameter("voucher");
#    $day=$requestparams["date"]["day"];
#    $month=$requestparams["date"]["month"];
#    $year=$requestparams["date"]["year"];
#    $dateholder=new Voucher();
#    if($request->hasParameter('date'))
#      $dateholder->setDate($request->getParameter('date'));
#    else if(!$day or !$month or !$year)
#      $dateholder->setDate(MyDate::today());
#    else
#      $dateholder->setDate($year."-".$month."-".$day);
#
#    //create new voucher input form
#    //this really is just for date input
#    @form=new VoucherForm($dateholder);
#
#    //load vouchers from database to be displayed
#    @vouchers =Doctrine_Query::create()
#        ->from('Voucher i')
#        ->where('date="'.$dateholder->getDate().'"')
#        ->orderBy('i.voucher_type_id,i.time')
#        ->execute();
#
#    @forms=array();
#    foreach(@vouchers as $voucher)
#    {
#      @forms[]=new VoucherForm($voucher);
#    }
#
#    //calculate totals
#      @pettycashtotal=0;
#      @chequetotal=0;
#      @othertotal=0;
#      @total=0;
#      foreach(@vouchers as $voucher)
#      {
#        @total+=$voucher->getAmount();
#        if($voucher->getVoucherTypeId()==1)
#          @pettycashtotal+=$voucher->getAmount();
#        else if($voucher->getVoucherTypeId()==2)
#          @chequetotal+=$voucher->getAmount();
#        else
#          @othertotal+=$voucher->getAmount();
#      }
#  }    
  end
  
  def help
  end

  # GET /vouchers
  # GET /vouchers.json
  def index
    @vouchers = Voucher.all
  end

  # GET /vouchers/1
  # GET /vouchers/1.json
  def show
  end

  # GET /vouchers/new
  def new
    @voucher = Voucher.new
  end

  # GET /vouchers/1/edit
  def edit
  end

  # POST /vouchers
  # POST /vouchers.json
  def create
    @voucher = Voucher.new(voucher_params)

    respond_to do |format|
      if @voucher.save
        format.html { redirect_to @voucher, notice: 'Voucher was successfully created.' }
        format.json { render :show, status: :created, location: @voucher }
      else
        format.html { render :new }
        format.json { render json: @voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vouchers/1
  # PATCH/PUT /vouchers/1.json
  def update
    respond_to do |format|
      if @voucher.update(voucher_params)
        format.html { redirect_to @voucher, notice: 'Voucher was successfully updated.' }
        format.json { render :show, status: :ok, location: @voucher }
      else
        format.html { render :edit }
        format.json { render json: @voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vouchers/1
  # DELETE /vouchers/1.json
  def destroy
    @voucher.destroy
    respond_to do |format|
      format.html { redirect_to vouchers_url, notice: 'Voucher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voucher
      @voucher = Voucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voucher_params
      params.require(:voucher).permit(:no, :date, :payee, :description, :amount)
    end
end
