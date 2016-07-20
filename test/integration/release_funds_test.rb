require 'test_helper'

class ReleaseFundsTest < ActionDispatch::IntegrationTest
  test "should be able to release vouchers" do
    # code to create a voucher
    # assert voucher was created
    # assert voucher is not released

    # http post that calls the voucher release action
    # assert success on previous

    # http get on voucher status
    # assert marked as released via HTTP
    # assert marked as released via Model
    
    assert false # fill in
  end

  test "should not be able to re-release vouchers" do
    # code to create a voucher
    # assert voucher was created
    # assert voucher is not released

    # http post that calls the voucher release action
    # assert success on previous

    # http get on voucher status
    # save as variable

    # http post that calls the voucher release action again
    # assert error on previous (should not be able to re-release)

    # http get on voucher status
    # assert voucher is unchanged
    
    assert false # fill in
  end
end
