json.extract! board, :id, :name, :score, :quizname, :created_at, :updated_at
json.url board_url(board, format: :json)
