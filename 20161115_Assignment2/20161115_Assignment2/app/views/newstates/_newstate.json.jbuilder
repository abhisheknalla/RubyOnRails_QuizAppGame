json.extract! newstate, :id, :quizname, :questionid, :score, :userid, :created_at, :updated_at
json.url newstate_url(newstate, format: :json)
