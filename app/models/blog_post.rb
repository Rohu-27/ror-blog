class BlogPost < ApplicationRecord
  has_rich_text :content
  has_one_attached :cover_image
  validates :title, presence: true
  validates :content, presence: true

  # lambda is used so that whenever a request is made we check with the current time
  # or else it wold take the current time as when the rails app booted up
  # sql sytax for nulls last "Arel.sql("published_at DESC NULLS LAST")"
  scope :sorted, -> {order(arel_table[:published_at].desc.nulls_first).order(updated_at: :desc)}
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
