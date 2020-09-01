# == Schema Information
#
# Table name: actors
#
#  id          :integer      not null, primary key
#  name        :string
#
# Table name: movies
#
#  id          :integer      not null, primary key
#  title       :string
#  yr          :integer
#  score       :float
#  votes       :integer
#  director_id :integer
#
# Table name: castings
#  id          :integer      not null, primary key
#  movie_id    :integer      not null
#  actor_id    :integer      not null
#  ord         :integer

# find, find_by, find_by_#{attribute}, etc. all return the first matching instance from the database; where returns a collection of instances, regardless of the number. Be careful about whether you are expecting the object itself or a collection-wrapped object/set of objects.
# ActiveRecord queries have two methods, to_sql and as_json, that you might find helpful for debugging. The specs use as_json -- feel free to refer to them while writing your queries.


def find_angelina
  #find Angelina Jolie by name in the actors table
  Actor.find_by name: 'Angelina Jolie'
  # Select class name
  # run method find_by
  # search by table name = name
  # search in name table = 'A.J.

  # returns an arr
end

def top_titles
  # get movie titles from movies with scores greater than or equal to 9
  # hint: use 'select' and 'where'
  Movie
    .select(:id, :title)
    .where('score >= 9')
    # select id and title
    # where (parameter)
    # both methods needs () following them

  # return a hash
end

def star_wars
  #display the id, title and year of each Star Wars movie in movies.
  # hint: use 'select' and 'where'
  Movie
    .select(:id, :title, :yr)
    .where('title LIKE \'%Star Wars%\'')

  # where statements take in '' as arguments
  # they also use SQL quereing methods like LIKE and %%
end


def below_average_years
  #display each year with movies scoring under 5,
  #with the count of movies scoring under 5 aliased as bad_movies,
  #in descending order
  # hint: use 'select', 'where', 'group', 'order'

  # Movie 
  # .select(:id, :yr, COUNT(*) AS :bad_movies)
  # .where('score < 5')
  # .group(:yr)
  # .order('bad_movies DESC' )
  Movie
    .select('yr', 'COUNT(*) AS bad_movies')
    .where('score < 5')
    .group('yr')
    .order('bad_movies DESC')

    # '' denotes SQL commands
end

def alphabetized_actors
  # display the first 10 actor names ordered from A-Z
  # hint: use 'order' and 'limit'
  # Note: Ubuntu users may find that special characters
  # are alphabetized differently than the specs.
  # This spec might fail for Ubuntu users. It's ok!

  # Actor
  #   .select(:id, :name)
  #   .order('name ASC')
  #   .limit(10)
  Actor
    .order('name ASC')
    .limit(10)

  # We don't need select because order contains name
end

def pulp_fiction_actors
  # practice using joins
  # display the id and name of all actors in the movie Pulp Fiction
  # hint: use 'select', 'joins', 'where'

  Actor
    .select(:id, :name)
    .joins(:movies)
    .where('title = \'Pulp Fiction\'')

  # actors from the movie pulp fiction
  # \'name\'' <-- normal naming convention in WHERE
end

def uma_movies
  #practice using joins
  # display the id, title, and year of movies Uma Thurman has acted in
  # order them by ascending year
  # hint: use 'select', 'joins', 'where', and 'order'

  Movie
    .select(:id, :title, :yr)
    .joins(:actors)
    .where('name = \'Uma Thurman\'')
    .order('yr ASC')
end
