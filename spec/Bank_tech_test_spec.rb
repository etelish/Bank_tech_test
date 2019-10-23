require './Bank_tech_test'
require 'date'


describe Statement do
  it "has a balance of zero" do
  expect(subject.balance).to eq(0)
  end

  it 'has a printed statement of transactions' do
    expect(subject.bank_statement).to eq([])
  end

  it 'allows user to deposit funds' do
    expect(subject).to respond_to(:deposit).with(1).argument
    subject.deposit(500)
    expect(subject.balance).to eq(500)
  end

  it 'allows a user to withdraw funds' do
    expect(subject).to respond_to(:withdraw).with(1).argument
    subject.deposit(500)
    subject.withdraw(100)
    expect(subject.balance).to eq(400)
  end

  it 'allows user to see date of transaction' do
    expect(subject.date).to eq("10-01-2012")
  end

  it 'returns first line of statement' do
    expect(subject.print_1).to eq('date || credit || debit || balance')
  end

  it 'checks last transaction type' do
      subject.deposit(500)
    expect(subject.transaction_type).to eq('credit')
  end






end
