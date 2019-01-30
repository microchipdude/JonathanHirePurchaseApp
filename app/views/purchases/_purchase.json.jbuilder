json.extract! purchase, :id, :purchaseno, :client_id, :dateofpurchase, :item_id, :quantity, :purchasevalue, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
