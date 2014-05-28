FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "Category #{n}" }
  end

  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    price       100
    description "foo"
    main_image  "bar"
    category
  end
end
