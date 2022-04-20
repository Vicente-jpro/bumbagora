# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1.times do 
   vicente = User.new({
        username: "Vicente",
        name_country: "Angola",
        localization_description: "Luanda/Kilamba", 
        email: "vicente@gmail.com",
        password: "vicente",
        password_confirmation: "vicente",
        type_subscription: "Company"
        })
  vicente.save

   galinha = User.new({
    username: "Galinha",
    name_country: "Angola",
    localization_description: "Luanda/Kilamba", 
    email: "galinha@gmail.com",
    password: "galinha",
    password_confirmation: "galinha",
    type_subscription: "Candidate"
    })
    galinha.save

end

Category.create(name: "Programming")
Category.create(name: "Construction")
Category.create(name: "Movie")
Category.create(name: "Others")

6.times do |job_number|

    Job.create(
        title: "Ruby on rails Dev #{job_number}", 
        description: "Developer new feacture", 
        salary: 4500*job_number, 
        category_id: job_number,
        type_job: "Presencial",
        expiry_date: "2022/#{job_number}/14",
        user_id: 1

    )
    Job.create(
        title: "Phython Dev #{job_number}", 
        description: "Developer new application", 
        salary: 4500*job_number, 
        category_id: job_number,
        type_job: "Remote",
        expiry_date: "2022/#{job_number}/14",
        user_id: 2

    )
end


 