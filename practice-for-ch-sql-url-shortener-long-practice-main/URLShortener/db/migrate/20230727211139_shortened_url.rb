class ShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url, unique: true
      t.string :long_url
      t.integer :user_id, index: {unique: true}

      t.timestamps
    end
  end
end
