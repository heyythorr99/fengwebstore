# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all
Product.create([
    {
        name: "tupperware",
        description: "a great way to store your food!",
        price: 1.00,
        quantity: 10,
        image: "tupperware.jpg"
    },
    {
        name: "mug",
        description: "enjoy your coffee or tea with this mug",
        price: 4.50,
        quantity: 10,
        image: "bear_mug.jpg"
    },
    {
        name: "plushie",
        description: "a nice friend",
        price: 5.00,
        quantity: 10,
        image: "plushie.jpg"
    }
])