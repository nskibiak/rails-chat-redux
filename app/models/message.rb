class Message < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :channel

  def as_json(_options = {})
    {
      id: id,
      author: user.email,
      content: content,
      created_at: created_at,
      channel: channel.name
    }
  end
end
