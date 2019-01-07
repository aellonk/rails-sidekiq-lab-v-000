class SongsWorker
require 'csv'
  include Sidekiq::Worker
 
  def perform(file_file)
    CSV.foreach(file_file, headers: true) do |file|
      Song.create(title: song[0], artist_name: song[1])
    end
  end
end