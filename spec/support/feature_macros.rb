module FeatureMacros
	def login_user
		user = create(:user)
    visit user_session_path
    within("#new_user") do
      fill_in 'user_email', :with => user.email
      fill_in 'user_password', :with => user.password
    end
    click_on 'Sign in'
  end
end
