require 'spec_helper'

describe 'making a plan', type: :system do
    describe 'display a list of the plan' do
        before do
            user_a = FactoryBot.create(:user, name: 'UserA', email: 'a@example.com')
            FactoryBot.create(:plan, name: 'First Plan', user: user_a)
        end

        context 'When UserA logins in' do
          before do
            visit login_path
            fill_in 'Email address', with: 'a@example.com'
            fill_in 'password', with: 'password'
            click_button 'Login'
           end

        it 'display a plan of UserA' do
            expect(page).to have_content 'First Plan'
        end
       end
    end
end