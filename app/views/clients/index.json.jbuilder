json.array!(@clients) do |client|
  json.extract! client, :id, :clientname, :addressline1, :addressline2, :city, :state, :zip, :internalid, :billingrate, :monthlyretainer, :hourspermonth, :invoicetype, :primaryphone, :status, :contactname, :contactemail, :contactphone, :clienttype, :clientsince
  json.url client_url(client, format: :json)
end
