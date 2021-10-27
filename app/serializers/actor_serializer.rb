class ActorSerializer < ActiveModel::Serializer
  belongs_to :movie
  attributes :id, :first_name, :last_name, :known_for, :age, :gender, :movie_id, :movie, :plot

end
