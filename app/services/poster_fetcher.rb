module PosterFetcher
  module_function

  def call(title)
    r = HTTParty.get("http://www.omdbapi.com/?t=#{title}&apikey=#{ENV['OMDB_API_KEY']}")
    r['Poster']
  rescue StandardError => e
    Rails.logger.warn "Error fetchig movie poster for '#{title}': #{e}"
    nil
  end
end
