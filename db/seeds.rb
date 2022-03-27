# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1.times do 
   user = User.new({
        username: "Vicente",
        name_country: "Angola",
        localization_description: "Luanda/Kilamba", 
        email: "vicente@gmail.com",
        password: "vicente",
        password_confirmation: "vicente"
        })
   user.save
end

Category.create(name: "Programming")
Category.create(name: "Construction")
Category.create(name: "Movie")
Category.create(name: "Authors")

3.times do |job_number|

    Job.create(
        title: "Ruby on rails Dev #{job_number}", 
        description: "Developer new feacture", 
        salary: 4500*job_number, 
        category_id: job_number
    )
end