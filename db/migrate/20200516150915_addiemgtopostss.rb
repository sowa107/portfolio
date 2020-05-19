class Addiemgtopostss < ActiveRecord::Migration[6.0]
  def change
     add_column :posts, :iemg, :has_one_attached
  end
end
