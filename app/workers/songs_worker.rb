class SongsWorker
  require 'csv'
  include Sidekiq::Worker

  def perform(songs_file)
    CSV.foreach(files_file, headers: true) do |song|
      Song.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
  end
end
