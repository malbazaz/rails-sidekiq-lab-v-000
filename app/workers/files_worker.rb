class FilesWorker
  require 'csv'
  include Sidekiq::Worker

  def perform(files_file)
    CSV.foreach(files_file, headers: true) do |song|
      Song.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
  end
end
