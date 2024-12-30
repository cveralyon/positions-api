Position.destroy_all

Position.create([
  {
    client_id: 1,
    title: "Software Engineer",
    description: "Responsible for developing and maintaining software solutions.",
    hiring_number: 3,
    work_mode: "Remote",
    location: "Santiago",
    salary: 3000,
    benefits: "Health insurance, remote work allowance",
    status: "open"
  },
  {
    client_id: 2,
    title: "Data Scientist",
    description: "Analyze complex datasets to provide actionable insights.",
    hiring_number: 2,
    work_mode: "Hybrid",
    location: "Buenos Aires",
    salary: 4000,
    benefits: "Flexible hours, yearly bonuses",
    status: "paused"
  },
  {
    client_id: 3,
    title: "Product Manager",
    description: "Manage product development from ideation to launch.",
    hiring_number: 1,
    work_mode: "On-site",
    location: "Lima",
    salary: 5000,
    benefits: "Stock options, travel allowance",
    status: "closed"
  }
])

puts "✅ Seed data created successfully!"
