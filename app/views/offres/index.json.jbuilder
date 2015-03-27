json.array!(@offres) do |offre|
  json.extract! offre, :id, :title, :descr, :price
  json.url offre_url(offre, format: :json)
end
