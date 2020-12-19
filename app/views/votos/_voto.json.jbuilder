json.extract! voto, :id, :eleitor_id, :int, :references,, :candidato_id, :int, :references, :created_at, :updated_at
json.url voto_url(voto, format: :json)
