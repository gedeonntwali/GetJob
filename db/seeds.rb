Application.create!([
  {first_name: "Kagaba", last_name: "Lionel", sex: "Male", nationality: "Rwandan", phone_number: "07356283450", email: nil, resume: "Responses to Emails.docx", cover_letter: "Team member roles.docx", highest_degree: "Bachelor degree", experience: "1 year", user_id: nil, job_id: nil, addition_docs: nil},
  {first_name: "", last_name: "", sex: "Male", nationality: "Rwandan", phone_number: "", email: nil, resume: "", cover_letter: "", highest_degree: "Diplomat", experience: "2 years", user_id: nil, job_id: nil, addition_docs: nil},
  {first_name: "Clause", last_name: "Jean", sex: "Male", nationality: "Rwandan", phone_number: "0723456903", email: nil, resume: "Gedeon Ntwali_Psychology at Work_Video link.docx", cover_letter: "Gedeon Ntwali_Employee Handbook_Psychology at Workplace.docx", highest_degree: "Bachelor degree", experience: "1 year", user_id: nil, job_id: nil, addition_docs: nil},
  {first_name: "", last_name: "", sex: "Male", nationality: "Other", phone_number: "", email: nil, resume: "KeplerActualizeApplicationTechnicalportion.docx", cover_letter: "", highest_degree: "PhD", experience: "Over 3 years", user_id: nil, job_id: nil, addition_docs: nil},
  {first_name: "Claude", last_name: "Niyitegeka", sex: "Male", nationality: "Rwandan", phone_number: "+25072604535", email: nil, resume: "The type of conflict and its scenario.docx", cover_letter: "Gedeon NTWALI.docx", highest_degree: "Bachelor degree", experience: "1 year", user_id: nil, job_id: nil, addition_docs: nil},
  {first_name: "Isaac", last_name: "Muhoza", sex: "Male", nationality: "Tanzanian", phone_number: "0789987865", email: nil, resume: "Gedeon Ntwali CV.docx", cover_letter: "<p>Hello Dear,</p>\r\n\r\n<p>My name is Gedon Ntwali, and I am student at Kepler Kigali.</p>\r\n", highest_degree: "Certificate", experience: "1 year", user_id: nil, job_id: nil, addition_docs: "Gedeon Ntwali.pdf"},
  {first_name: "Roger", last_name: "", sex: "Male", nationality: "Rwandan", phone_number: "", email: nil, resume: "Gedeon Ntwali.pdf", cover_letter: "", highest_degree: "PhD", experience: "Over 3 years", user_id: nil, job_id: nil, addition_docs: ""},
  {first_name: "Arsene", last_name: "", sex: "Male", nationality: "Rwandan", phone_number: "", email: nil, resume: "Gedeon Ntwali.pdf", cover_letter: "", highest_degree: "PhD", experience: "Over 3 years", user_id: nil, job_id: nil, addition_docs: ""},
  {first_name: "Josh", last_name: "", sex: "Male", nationality: "Rwandan", phone_number: "", email: nil, resume: "Gedeon Ntwali.pdf", cover_letter: "", highest_degree: "PhD", experience: "Over 3 years", user_id: nil, job_id: nil, addition_docs: ""}
])
Category.create!([
  {name: "Education"},
  {name: "Administration"},
  {name: "Agriculture"},
  {name: "Banking"},
  {name: "Health"},
  {name: "Engineering"},
  {name: "Telecommunication"},
  {name: "Public Health"},
  {name: "Education"},
  {name: "Administration"},
  {name: "Agriculture"},
  {name: "Banking"},
  {name: "Health"},
  {name: "Engineering"},
  {name: "Telecommunication"},
  {name: "Public Health"},
  {name: "Education"},
  {name: "Administration"},
  {name: "Agriculture"},
  {name: "Banking"},
  {name: "Health"},
  {name: "Engineering"},
  {name: "Telecommunication"},
  {name: "Public Health"},
  {name: "Education"},
  {name: "Administration"},
  {name: "Agriculture"},
  {name: "Banking"},
  {name: "Health"},
  {name: "Engineering"},
  {name: "Telecommunication"},
  {name: "Public Health"}
])
Company.create!([
  {name: "Kepler Kigali", address: "Kimironko Kwa Mushimire", email: "kepler@kepler.org", website: nil, description: "Kepler Kigali is a non-profit organization that are working in Rwanda to help some Rwandans to get the high quality education"},
  {name: "BRALIRWA LTD", address: "25Av 34St Gasabo, Kigali, Rwanda", email: nil, website: nil, description: "gedljkld kfjklds fdkfj lskjfaldkjf sldkfj dlkfj sdkljf sldjf asd\r\nsd kfjsdlkjfd lsdjf lksdfj ladfie fdkjdsfjie fdjkfjdsjuie fnsljsdjjfd\r\n akljdfa *djfkdjs* kdjskfjeinskdfn sdkf ldskfaf\r\n faskjksd"},
  {name: "Bank of Kigali", address: "Gasabo, Kigali", email: "bkrwanda@yahoo.fr", website: nil, description: "It is the best bank in Rwanda."}
])
Job.create!([
  {title: "Outgoing Call Function Operator", description: "One Acre Fund is an agricultural NGO that is innovating a new way of helping farm families to achieve their full potential. It is looking for an employee to work as the call function operator in Karongi District. ", user_id: nil, category_id: 3, company_id: nil, job_responsability: "<hr />\r\n<ul>\r\n\t<li><strong>Outgoing Call Function Operator &ndash;&nbsp;</strong>You will be responsible for making outgoing calls to current TUBURA clients in order to conduct short surveys and identify outstanding client protection issues. For each outgoing call, you will be responsible for recording all relevant data, including categorical and qualitative responses to survey questions. You will be responsible for escalating any urgent client protection issues to the Customer Engagement Team Lead and other departments, as necessary</li>\r\n\t<li><strong>Data Analysis &ndash;&nbsp;</strong>You will be responsible for comprehensively and comprehensibly presenting incoming survey data to the Customer Engagement Team Lead. You will use and maintain several Excel and Google spreadsheets containing client data and survey responses. You will occasionally present short analyses of the data to the CE Team in English</li>\r\n\t<li><strong>Small projects &ndash;&nbsp;</strong>The OCF Team will be responsible for occasional small non-repeated outgoing call projects. You will include these small projects in your monthly schedule as appropriate, and effectively manage your time between these projects and your primary responsibilities</li>\r\n\t<li><strong>Task switch(Move to the hotline)</strong>-You will be required to switch to the hotline team to help handle the incoming call section during high pick calls like distribution seasons, massive refund seasons and whenever there is a special need to fill in at the hotline.</li>\r\n</ul>\r\n", job_requirement: "<hr />\r\n<ul>\r\n\t<li>Demonstrated computer skills in email, internet usage, Microsoft Office</li>\r\n\t<li>Excellent communication skills and customer service</li>\r\n\t<li>Excellent time-management skills and attention to detail</li>\r\n\t<li>Commitment to client protection and confidentiality</li>\r\n\t<li>Commitment to personal growth within TUBURA</li>\r\n\t<li>Integrity and a positive attitude</li>\r\n\t<li>Passionate about serving smallholder farmers</li>\r\n\t<li>Experience in a call center or hotline is strongly desired but not required</li>\r\n\t<li>Fluent in Kinyarwanda and functional in written and verbal English</li>\r\n</ul>\r\n", deadline: "2017-03-24", apply_info: "<hr />\r\n<p>Please click on this link:&nbsp;</p>\r\n\r\n<p><a href=\"https://oneacrefund.formstack.com/forms/rwanda_job_application_form\" target=\"_blank\">https://oneacrefund.formstack.com/forms/rwanda_job_application_form</a></p>\r\n\r\n<p>Please complete the linked form carefully, only top candidates will be considered. It is not necessary to attach a cover letter or CV but you may do so at the end of the form.</p>\r\n"},
  {title: "Communications Officer", description: "The Communications Officer will be responsible developing organizational communication strategy, style guide, and ensuring adherence with FXB Rwanda communication charter. S/he will also work with relevant departments, especially donor funded programs, to ensure external communication materials (social media, brochures, fact sheets, presentations, etc.) are in compliance with brand guidelines and present compelling, timely, and technically accurate information about FXB Rwanda work.", user_id: nil, category_id: 2, company_id: nil, job_responsability: "<hr />\r\n<ul>\r\n\t<li>Work with project team to prepare reports, brochures, fact sheets, and other external communications documents associated with the project for donors and partners; providing desktop publishing (design of report), copy editing, and message framing.</li>\r\n\t<li>Manage communication products such as photos, videos for use in external communications such as fact sheet, newsletters, presentations, and to support the FBX Rwanda&rsquo;s presence online.</li>\r\n\t<li>Promote a culture of communication in the organization by engaging staff using internal communication channels to ensure timely and accurate project information is disseminated across FXB Rwanda and partners;</li>\r\n\t<li>Coordinate and respond to media inquiries, facilitate field visit, prepare press statements and arranging press conferences as needed to promote FBX Rwanda&rsquo;s work locally and internationally;</li>\r\n\t<li>Ensure that all communications are compliant with brand requirements for FXB Rwanda and donors;</li>\r\n\t<li>Develop FXB Rwanda marketing materials covering high-level results and impact for use in new business development and external marketing purposes;</li>\r\n\t<li>Regularly updating the FXB Rwanda website, Facebook and Twitter accounts; perusing new social media accounts as deemed necessary (LinkedIn, etc.).</li>\r\n\t<li>Organize FXB Rwanda&rsquo;s major events;</li>\r\n\t<li>Prepare budget, operating plans and engagement reports (social media, press coverage, etc.) for senior leadership</li>\r\n</ul>\r\n", job_requirement: "<hr />\r\n<ul>\r\n\t<li>A degree in Mass Communication/Public Relations/International Development or a related field.</li>\r\n\t<li>Experience with development programs implemented through USAID and other bilateral development agencies or multinational corporate social responsibility programs.</li>\r\n\t<li>Excellent computer skills with experience in social media and knowledge of relevant desktop publishing programs (Microsoft Word, PowerPoint)</li>\r\n\t<li>A commitment to the mission of FXB Rwanda</li>\r\n\t<li>Excellent written and verbal communication; proficiency in English and Kinyarwanda. A good command of French is an added advantage.</li>\r\n\t<li>Self-motivated, detail-oriented with strong organizational skills</li>\r\n\t<li>The ability to work independently and with others</li>\r\n\t<li>Dependability, flexibility, and ability to maintain confidentiality</li>\r\n\t<li>The ability to work well under pressure and meet deadlines</li>\r\n\t<li>Openness to learning and growing</li>\r\n\t<li>Understanding of visual layout and design best practice required</li>\r\n\t<li>Proficiency in Photoshop, Illustrator, or InDesign preferred</li>\r\n</ul>\r\n", deadline: "2017-03-28", apply_info: nil},
  {title: "Meeting Coordinator at Safe Moto", description: "Safe Moto is recruiting a meeting coordinator who will be responsible for leading meeting", user_id: nil, category_id: nil, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil},
  {title: " Teacher at Umubano University", description: "It includes to teach children the mathematics skills and english", user_id: nil, category_id: 1, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil},
  {title: "Meeting Coordinator at Safe Moto", description: "Safe Moto is recruiting a meeting coordinator who will be responsible for leading meeting", user_id: nil, category_id: nil, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil},
  {title: " Teacher at Umubano University", description: "It includes to teach children the mathematics skills and english", user_id: nil, category_id: 1, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil},
  {title: "Meeting Coordinator at Safe Moto", description: "Safe Moto is recruiting a meeting coordinator who will be responsible for leading meeting", user_id: nil, category_id: nil, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil},
  {title: " Teacher at Umubano University", description: "It includes to teach children the mathematics skills and english", user_id: nil, category_id: 1, company_id: nil, job_responsability: nil, job_requirement: nil, deadline: nil, apply_info: nil}
])
User.create!([
  {first_name: "Gedeon", last_name: "Ntwali", email: "ntwari28@gmail.com", role_id: nil, password_digest: "$2a$10$UO4o/YFGzDlMdk80vVIxIuk05nhyI2exCYYPOd284SrfGkK095e7u"}
])
