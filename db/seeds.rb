Category.create!([
  {name: "Education"},
  {name: "Administration"},
  {name: "Agriculture"},
  {name: "Banking"},
  {name: "Health"},
  {name: "Engineering"},
  {name: "Telecommunication"},
  {name: "Public Health"}
])
Job.create!([
  {title: "Meeting Coordinator at Safe Moto", description: "Safe Moto is recruiting a meeting coordinator who will be responsible for leading meeting", user_id: nil, category_id: nil, company_id: nil},
  {title: " Teacher at Umubano University", description: "It includes to teach children the mathematics skills and english", user_id: nil, category_id: 1, company_id: nil}
])
Role.create!([
  {user_type: "admin"},
  {user_type: "company"},
  {user_type: "applicant"}
])
