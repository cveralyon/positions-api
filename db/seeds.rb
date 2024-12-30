# Limpiar datos existentes
Client.destroy_all
Position.destroy_all

# Crear clientes
clients = Client.create!([
  {
    name: "Google",
    logo: "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"
  },
  {
    name: "Amazon Web Services",
    logo: "https://download.logo.wine/logo/Amazon_Web_Services/Amazon_Web_Services-Logo.wine.png"
  },
  {
    name: "Airbnb",
    logo: "https://www.theriver.asia/wp-content/uploads/2020/01/pngkey.com-airbnb-logo-png-605967.png"
  }
])

# Crear posiciones
Position.create!([
  {
    client_id: clients[0].id,
    title: "Software Engineer",
    description: "Responsible for developing and maintaining software solutions.",
    hiring_number: 3,
    work_mode: "Remote",
    location: "Santiago",
    salary: 3000,
    benefits: "Health insurance, remote work allowance",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "Data Scientist",
    description: "Analyze complex datasets to provide actionable insights.",
    hiring_number: 2,
    work_mode: "Hybrid",
    location: "Buenos Aires",
    salary: 4000,
    benefits: "Flexible hours, yearly bonuses",
    status: "Paused"
  },
  {
    client_id: clients[2].id,
    title: "Product Manager",
    description: "Manage product development from ideation to launch.",
    hiring_number: 1,
    work_mode: "On-Site",
    location: "Lima",
    salary: 5000,
    benefits: "Stock options, travel allowance",
    status: "Closed"
  },
  {
    client_id: clients[0].id,
    title: "Cloud Engineer",
    description: "Design and maintain scalable cloud infrastructure.",
    hiring_number: 4,
    work_mode: "Remote",
    location: "New York",
    salary: 6000,
    benefits: "AWS training, free certifications",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "DevOps Engineer",
    description: "Build and maintain CI/CD pipelines for multiple products.",
    hiring_number: 2,
    work_mode: "Hybrid",
    location: "San Francisco",
    salary: 5500,
    benefits: "Paid time off, yearly bonuses",
    status: "Open"
  },
  {
    client_id: clients[2].id,
    title: "UX Designer",
    description: "Create user-centered designs for web and mobile applications.",
    hiring_number: 2,
    work_mode: "On-Site",
    location: "Toronto",
    salary: 4500,
    benefits: "Flexible hours, health insurance",
    status: "Paused"
  },
  {
    client_id: clients[0].id,
    title: "Marketing Specialist",
    description: "Plan and execute digital marketing campaigns.",
    hiring_number: 1,
    work_mode: "Remote",
    location: "London",
    salary: 3500,
    benefits: "Stock options, travel allowance",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "Data Engineer",
    description: "Develop and optimize data pipelines for large datasets.",
    hiring_number: 3,
    work_mode: "Hybrid",
    location: "Berlin",
    salary: 5000,
    benefits: "Flexible hours, free AWS certifications",
    status: "Closed"
  }
])

puts "✅ Seed data created successfully!"
