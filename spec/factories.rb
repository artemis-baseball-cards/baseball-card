FactoryBot.define do
  factory(:employee) do
    name("Annie")
    position("associate")
    start_date("01/01/18")
    personal_development_plan("test information")
    life_quote("Just keep swimming")
    quote("Laugh and the world laughs with you.")
    motto("Showing up is half the battle.")
    strength("Futuristic, Connectedness, Responsibility, Strategic, Discipline")
    myers_briggs("INFJ-A")
    birkman("Usual Behavior - Blue (Thinker); Stress Behavior – Green (Communicator)")
    vision("")
    short_term_goal("To complete a successful project")
    long_term_goal("To write elegant code")
    area_to_develop("communication")
    objective_setting("test")
    personal_goal("To be a better person")
  end

  factory(:employee_project) do
    employee
    project
  end

  factory(:other) do
    occasion("hire anniversary")
    end_project("01/02/18")
    birthday("07/11")
    pulse_survey("Was there anything that prevented you from doing your best work?")
  end

  factory(:project) do
    title("Baseball Cards")
    start_date("01/22/18")
    end_date("02/11/18")
    project_type("advertising")
    role("build revenue through targeted advertising")
    key_skill("media")
    objective("advertise through radio and internet ads")
    goals("20 percent increase in traffic to company website")
    employee
  end

  factory(:user) do
    email("test123@gmail.com")
    password("Test123")
    password_confirmation("Test123")
  end
