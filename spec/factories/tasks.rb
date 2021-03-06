FactoryBot.define do
  factory :task do
    sequence(:name) { |n| "#{n}MyString" }
    content { 'MyText' }
    expiration_deadline { Time.zone.now }
    association :user

    factory :task_status_not_started_yet do
      status { 'not_started_yet' }
    end

    factory :task_status_under_start do
      status { 'under_start' }
    end

    factory :task_status_completion do
      status { 'completion' }
    end
  end
end
