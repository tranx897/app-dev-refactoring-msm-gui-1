# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    movie_id = self.movie_id
    matching_movie = Movie.where({ :id => movie_id})[0]
    return matching_movie
  end
end
