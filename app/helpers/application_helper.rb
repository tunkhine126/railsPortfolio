module ApplicationHelper

  def last_updated
    last_updated = Rails.cache.fetch('last_updated', expires_in: 12.hours) do
      response = HTTParty.get('https://api.github.com/repos/tunkhine126/portfolio-ruby-cms')
      json = JSON.parse(response.body)
      json['pushed_at']
    end
    last_updated.present? ? last_updated : Time.now
  end

end
