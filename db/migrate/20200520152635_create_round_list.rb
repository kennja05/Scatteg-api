class CreateRoundList < ActiveRecord::Migration[6.0]
  def change
    create_table :round_lists do |t|
      t.integer :list_id
      t.integer :round_id
      t.timestamps
    end
  end
end
