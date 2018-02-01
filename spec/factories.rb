FactoryBot.define do
  factory(:employee) do
    name("Annie")
    position("associate")
    start_date("01/01/18")
    life_quote("Just keep swimming")
    quote("Laugh and the world laughs with you.")
    motto("Showing up is half the battle.")
    strength("Futuristic, Connectedness, Responsibility, Strategic, Discipline")
    myers_briggs("INFJ-A")
    birkman("Usual Behavior - Blue (Thinker); Stress Behavior – Green (Communicator)")
    mission("My mission at Artemis is to be a team player that makes a positive impact on the business.")
    vision("My vision is we work smarter and reach profitability goals.")
    expectation("You can expect if if I'm working on something I will deliver it on time and my work will be of high quality.")
    short_term_goal("To complete a successful project")
    long_term_goal("To write elegant code")
    awesome("I'm very organized.")
    need("I need positive reincorcement on things I'm doing well.")
    receive_feedback("I appreciate it when both compliments and constructive feedback.")
    development("I'm reading a lot of books.")
    area_to_develop("Write problem definition for projects")
    area_to_develop_two("Ad hoc analyses")
    area_to_develop_three("Runs analyses using model created by the manager")
    objective_setting("Over the next 30-60 days I will draft problem definitions for two new engagements.")
    personal_goal("Meditate every day.")
    personal_goal_two("Take time for personal hobbies.")
    personal_goal_three("Read 1 book a month.")
  end

  factory(:employee_project) do
    employee
    project
  end

  factory(:other) do
    occasion("hire anniversary")
    end_project("01/02/18")
    birthday("07/11")
    pulse_survey("Linda was amazing to work with!")
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
end
