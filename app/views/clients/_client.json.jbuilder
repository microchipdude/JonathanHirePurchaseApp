json.extract! client, :id, :name, :dateofbirth, :nrc, :manno, :address, :phone, :email, :employstatus, :employministry, :dateofemploy, :expretirementdate, :grosssalary, :nok, :maritalstatus, :created_at, :updated_at
json.url client_url(client, format: :json)
