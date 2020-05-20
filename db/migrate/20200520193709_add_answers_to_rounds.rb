class AddAnswersToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :qOne, :string
    add_column :rounds, :qTwo, :string
  end
end
