class CreateTestModel2s < ActiveRecord::Migration[7.1]
  def change
    create_table :test_model2s do |t|

      t.timestamps
    end
  end
end
