class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    has_one_attached :iemg
  end
end
