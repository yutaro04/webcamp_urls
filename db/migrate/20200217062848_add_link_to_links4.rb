class AddLinkToLinks4 < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :target_id, :integer
  end
end
