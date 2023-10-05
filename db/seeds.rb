# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

City.create(name: 'Santiago de Chile')
City.create(name: 'Temuco')
City.create(name: 'Antofagasta')

Material.create(name: "Turbinas")
Material.create(name: "Sistemas de ignición")
Material.create(name: "Sistemas de combustible")

EquipmentType.create(name: "Motor a reacción")
EquipmentType.create(name: "Motor turbohélice")

20.times do |i|
    enginer = Enginer.new(
      name: "REAC-#{i + 1}",
      description: "Descripción del motor REAC-#{i + 1}",
      equipment_type: EquipmentType.find_by(name: "Motor a reacción")
    )
    enginer.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default_motor_image.jpg')), filename: 'default_motor_image.jpg', content_type: 'image/jpeg') unless enginer.image.attached?
    enginer.save!
end