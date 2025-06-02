
   require 'csv'

  ship_file = "db/data/spaceship.csv"
    CSV.foreach(ship_file, headers: true) do |ship|
      Article.find_or_create_by!(
      name: row['Name'],
      universe: row['Universe'],
      flight_details: row['Propulsion & Manauverability'],
      struct_and_thermal: row['Structural Integrity & Thermal Management'],
      life_support: row['Life Support'],
      comms_and_data: row['Communication and Data'],
      power_systems: row['Power Systems'],
      safety_system: row['Safety System'],
      mission_specific_adaptions: row['Mission Specific Adaptions'],
      combat_details: row['Combat Capabilities']
      )
    end
