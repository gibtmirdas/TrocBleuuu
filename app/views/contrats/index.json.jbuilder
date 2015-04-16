json.array!(@contrats) do |contrat|
  json.extract! contrat, :id, :startDate, :endDate, :offre_id, :offreur_id, :demandeur_id
  json.url contrat_url(contrat, format: :json)
end
