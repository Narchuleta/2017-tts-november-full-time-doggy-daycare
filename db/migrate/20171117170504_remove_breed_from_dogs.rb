class RemoveBreedFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :breed, :string
  end
end
