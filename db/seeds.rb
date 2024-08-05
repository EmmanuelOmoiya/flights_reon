# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

airlines = Airline.create([
    {
        name: "Arik Air",
        image_url: "https://www.arikair.com/assets/images/favicon.ico"
    },
    {
        name: "Fly Aero",
        image_url: "https://www.flyaero.com/asset/img/favicon.png"
    },
    {
        name: "Ibom Air",
        image_url: "https://www.ibomair.com/wp-content/uploads/2018/12/ibom-air-logo-hallmark.png"
    },
    {
        name: "Airpeace",
        image_url: "https://flyairpeace.com/wp-content/uploads/2024/05/cropped-favicon-180x180.webp"
    }
])


reviews = Review.create([
    {
        title: "Great Airline",
        description: "Was a very lovely flight",
        score: 5,
        airline: airlines.first
    },
    {
        title: "Quite Somehow",
        description: "Food wasn't great",
        score: 2,
        airline: airlines.first
    }
])