FactoryBot.define do
  factory :project do
    sequence(:title) {|n| "project title #{n}"}
    user
  end
end