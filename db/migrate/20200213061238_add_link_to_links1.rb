class AddLinkToLinks1 < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :name, :string
  end
end
