class AddSpaceships < ActiveRecord::Migration[8.0]
  def change
    create_table :ships do |t|
      # Name: Simple string, should always exist
      t.string :name, null: false

      # Universe: Simple string, should always exist
      t.string :universe, null: false

      # All the detailed descriptions are long text fields
      t.text :propulsion_and_maneuverability, null: false
      t.text :structural_integrity_and_thermal_management, null: false
      t.text :life_support, null: false
      t.text :communication_and_data, null: false
      t.text :power_systems, null: false
      t.text :safety_systems, null: false # Renamed to plural for consistency
      t.text :mission_specific_adaptations, null: false # Corrected spelling
      t.text :combat_capabilities, null: false

      # Automatically adds created_at and updated_at columns
      t.timestamps
    end
  end
end
