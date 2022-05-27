require 'rails_helper'

RSpec.describe 'transactions/show', type: :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
                                          name: 'Bright',
                                          amount: '2',
                                          user: 1,
                                          category: 1
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/'2'/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
  end
end
