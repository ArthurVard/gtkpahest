json.array!(@people) do |person|
  json.extract! person, :id, :section_id, :position_id, :room_id, :firstName, :lastName, :thirdName, :cellPhone1, :cellPhone2, :cityPhone, :email, :workemail, :bdate
  json.url person_url(person, format: :json)
end
