# Given(/^the following movies exist:$/) do |table|
#     table.hashes.each do |movie|
#         Movie.create({:title => movie[:title], rating => movie[:rating], :release_date => movie[:release_date], :director => movie[:director]})
#     end
# end

Given(/^the following movies exist:$/) do |table|
    table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

When(/^I go to the edit page for "(.*?)"$/) do |name|
    @movie = Movie.find_by(title: name)
    visit edit_movie_path(@movie.it)
end

When(/^I go to the details page for "(.*?)"$/) do |name|
    @movie = Movie.find_by(title: name)
    visit movie_path(@movie.it)
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |name, director|
    expect(Movie.find_by(title: name).to eq(director))
end

