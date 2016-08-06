class VoucherForeignKey < ActiveRecord::Migration
  def change
#    add_foreign_key :businesses, :users
  add_reference :vouchers, :voucher_account, index: true, foreign_key: true
    end
end
