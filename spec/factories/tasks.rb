FactoryBot.define do
  factory :project do
    sequence(:title) {|n| "task title #{n}"}
    project
    priority {rand(n)}
    deadline {Time.now}
    done {n.odd?}
  end
end