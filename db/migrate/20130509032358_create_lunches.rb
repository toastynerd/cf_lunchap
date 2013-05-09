class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :what_i_ate
      t.string :day_of_the_week

      t.timestamps
    end
  end
end
