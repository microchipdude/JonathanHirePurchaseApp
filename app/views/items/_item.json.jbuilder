json.extract! item, :id, :itemno, :name, :stockingdate, :model, :warrantexpdate, :serialno, :created_at, :updated_at
json.url item_url(item, format: :json)
