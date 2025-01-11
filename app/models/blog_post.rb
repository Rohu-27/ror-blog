class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  # lambda is used so that whenever a request is made we check with the current time
  # or else it wold take the current time as when the rails app booted up
  scope :sorted, -> {order(published_at: :desc, updated_at: :desc)}
  scope :draft, -> {where(published_at: nil)}
  scope :published, -> {where("published_at <= ?", Time.current)}
  scope :scheduled, -> {where("published_at > ?", Time.current)}

  def draft?
    published_at.nil?
  end

  def published?
    published_at? && published_at <= Time.current
  end

  def scheduled?
    published_at? && published_at > Time.current
  end

end
