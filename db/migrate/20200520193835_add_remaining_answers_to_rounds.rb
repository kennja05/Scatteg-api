class AddRemainingAnswersToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :qThree, :string
    add_column :rounds, :qFour, :string
    add_column :rounds, :qFive, :string
    add_column :rounds, :qSix, :string
    add_column :rounds, :qSeven, :string
    add_column :rounds, :qEight, :string
    add_column :rounds, :qNine, :string
    add_column :rounds, :qTen, :string
    add_column :rounds, :qEleven, :string
    add_column :rounds, :qTwelve, :string
  end
end
