require 'spec_helper'

describe Category do

  before do
    @category = Category.new(name: "foo")
  end

  subject { @category }

  it { should respond_to(:name) }
end
