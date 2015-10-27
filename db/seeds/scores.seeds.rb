puts "Seeding scores"
Score.where(team: "Boys Varsity Soccer", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Boys JV Soccer", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Boys 3rds Soccer", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Boys Varsity Football", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Boys JV Football", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Boys Cross Country", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls Cross Country", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls Varsity Soccer", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls JV Soccer", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls Varsity Field Hockey", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls JV Field Hockey", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls Varsity Tennis", blairScore: 0, peddieScore: 0, active: true).first_or_create!
Score.where(team: "Girls JV Tennis", blairScore: 0, peddieScore: 0, active: true).first_or_create!