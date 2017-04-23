require "rails_helper"

feature "Index displays a list of post"  do
        scenario "the index displays correct created post information" do
                post_one = create(:post, content: "this is post one")
                post_two = create(:post, content: "this is the second post")

                visit "/"
                expect(page).to have_content("this is post one")
                expect(page).to have_content("this is the second post")
                expect(page).to have_css("img[src*='emma_deck']")
        end
end