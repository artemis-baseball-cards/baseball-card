require "rails_helper"

describe "the employee management path" do
  before do
    @user = FactoryBot.create(:user, admin: true)
    visit 'users/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
  end

  it "allows admin to view all baseba;; cards" do
    visit employees_path
    expect(page).to have_content("test123@gmail.com")
  end

  # it "allows admin to update baseball cards" do
  #   visit employees_path
  #   click_on "Update Card"
  #
  # end
end
