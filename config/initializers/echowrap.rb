require 'echowrap'

Echowrap.configure do |config|
  config.api_key       = ENV['ECHONEST_API_KEY']
  config.consumer_key  = ENV['ECHONEST_CONSUMER_KEY']
  config.shared_secret = ENV['ECHONEST_SHARED_SECRET']
end

# Echowrap.song_search(:key => 8,
#                      :mode => 0,
#                      :min_tempo => 87,
#                      :max_tempo =>  93,
#                      :artist_min_familiarity => 0.8,
#                      :results => 100,
#                      :sort => 'danceability-desc'
#                       ).map do |song|
#   puts "#{song.id} #{song.artist_id} #{song.artist_name} #{song.title}"
# end
