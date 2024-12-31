Client.destroy_all
Position.destroy_all

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
    client_id: clients[0].id,
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
    client_id: clients[1].id,
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
    client_id: clients[2].id,
    title: "Data Engineer",
    description: "Develop and optimize data pipelines for large datasets.",
    hiring_number: 3,
    work_mode: "Hybrid",
    location: "Berlin",
    salary: 5000,
    benefits: "Flexible hours, free AWS certifications",
    status: "Closed"
  },
  {
    client_id: clients[1].id,
    title: "Frontend Developer",
    description: "Create interactive user interfaces using modern frameworks.",
    hiring_number: 2,
    work_mode: "Remote",
    location: "Tokyo",
    salary: 4500,
    benefits: "Health insurance, stock options",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "Backend Developer",
    description: "Develop and maintain server-side logic and APIs.",
    hiring_number: 3,
    work_mode: "On-Site",
    location: "Paris",
    salary: 5500,
    benefits: "Flexible hours, free meals",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "Cybersecurity Analyst",
    description: "Monitor and protect systems from cyber threats.",
    hiring_number: 1,
    work_mode: "Hybrid",
    location: "Singapore",
    salary: 7000,
    benefits: "Remote work allowance, health insurance",
    status: "Paused"
  },
  {
    client_id: clients[2].id,
    title: "HR Manager",
    description: "Oversee and manage human resources operations.",
    hiring_number: 2,
    work_mode: "On-Site",
    location: "Sydney",
    salary: 5000,
    benefits: "Stock options, yearly bonuses",
    status: "Closed"
  },
  {
    client_id: clients[0].id,
    title: "AI Researcher",
    description: "Conduct research and develop AI solutions.",
    hiring_number: 4,
    work_mode: "Remote",
    location: "Los Angeles",
    salary: 9000,
    benefits: "Research grants, free equipment",
    status: "Open"
  },
  {
    client_id: clients[2].id,
    title: "Project Coordinator",
    description: "Coordinate projects and ensure timely delivery.",
    hiring_number: 2,
    work_mode: "Hybrid",
    location: "Mexico City",
    salary: 4000,
    benefits: "Paid leave, flexible hours",
    status: "Open"
  },
  {
    client_id: clients[2].id,
    title: "IT Support Specialist",
    description: "Provide technical support and resolve IT issues.",
    hiring_number: 2,
    work_mode: "On-Site",
    location: "Bangkok",
    salary: 3500,
    benefits: "Health insurance, free training",
    status: "Paused"
  },
  {
    client_id: clients[0].id,
    title: "Graphic Designer",
    description: "Design creative visuals for marketing campaigns.",
    hiring_number: 1,
    work_mode: "Remote",
    location: "Rome",
    salary: 3200,
    benefits: "Remote work allowance, flexible hours",
    status: "Open"
  },
  {
    client_id: clients[0].id,
    title: "Database Administrator",
    description: "Maintain and optimize database systems.",
    hiring_number: 3,
    work_mode: "Hybrid",
    location: "Dubai",
    salary: 6000,
    benefits: "Paid certifications, health insurance",
    status: "Open"
  },
  {
    client_id: clients[0].id,
    title: "Sales Executive",
    description: "Drive sales and manage client relationships.",
    hiring_number: 4,
    work_mode: "On-Site",
    location: "Seoul",
    salary: 5000,
    benefits: "Stock options, yearly bonuses",
    status: "Open"
  },
  {
    client_id: clients[0].id,
    title: "Content Writer",
    description: "Create engaging content for various platforms.",
    hiring_number: 1,
    work_mode: "Remote",
    location: "Vienna",
    salary: 2800,
    benefits: "Flexible hours, free training",
    status: "Open"
  },
  {
    client_id: clients[1].id,
    title: "Machine Learning Engineer",
    description: "Build and deploy machine learning models.",
    hiring_number: 2,
    work_mode: "Hybrid",
    location: "Madrid",
    salary: 7500,
    benefits: "Flexible hours, research grants",
    status: "Open"
  }
])

puts "✅ 20 Positions Seed Data Created Successfully!"
