require 'spec_helper'

describe Product do
  
  let(:category) { FactoryGirl.create(:category) }
  before do
    @product = category.products.build(name: "foo", price: 100, description: "bar",
                           main_image: "baz", category_id: 0)
  end

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:description) }
  it { should respond_to(:main_image) }
  it { should respond_to(:category_id) }
  its(:category) { should eq category }

  describe "when category_id is not present" do
    before { @product.category_id = nil }
    it { should_not be_valid }
  end
end
