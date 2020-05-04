class AddChannelReferenceToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :channel, foreign_key: true
  end
end
