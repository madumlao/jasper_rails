json.array!(@voucher_accounts) do |voucher_account|
  json.extract! voucher_account, :id, :name
  json.url voucher_account_url(voucher_account, format: :json)
end
