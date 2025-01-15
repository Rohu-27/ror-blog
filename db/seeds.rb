# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: "rohithraj272001@gmail.com").first_or_initialize
user.update!(
  password: "password",
  password_confirmation: "password"
)

99.times do |index|
  blog_post = BlogPost.where(title: "Blog Post #{index+1}").first_or_initialize
  blog_post.update!(content: "In hac habitasse platea dictumst. Praesent dui lacus, pellentesque in ligula quis, maximus pretium diam. Ut hendrerit pharetra odio, vitae pretium mauris mollis eu. Curabitur porta iaculis aliquet. In dignissim, felis mattis imperdiet imperdiet, tellus sapien dapibus sem, vel ullamcorper augue purus vel eros. Proin faucibus blandit nunc sit amet lobortis. Integer nisi est, ornare ut sodales tempus, fringilla id purus. Nunc ante turpis, consequat et condimentum ac, gravida vel tortor. In ac nibh orci. Maecenas vitae ante quis orci tincidunt fermentum. Duis efficitur porta dolor, sed condimentum justo rutrum id. Ut id ipsum ornare, lobortis lacus in, mollis dui.", published_at: Time.current)
end