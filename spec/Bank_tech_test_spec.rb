require './Bank_tech_test'
require 'date'


describe Statement do
  it "has a balance of zero" do
  expect(subject.balance).to eq(0)
  end

  it 'allows user to see date of transaction' do
    expect(subject.date).to eq(Date.new(2019,10,23).strftime("%d-%m-%Y"))
  end

  it 'has a printed statement of transactions' do
    expect(subject.bank_statement).to eq(['date || credit || debit || balance'])
  end

  it 'allows user to deposit funds' do
    expect(subject).to respond_to(:deposit).with(1).argument
    # subject.print_1()
    subject.deposit(500)
    expect(subject.balance).to eq(500)
    expect(subject.bank_statement).to eq(["date || credit || debit || balance", "23-10-2019 || 500 ||    || 500"])
  end

  it 'allows a user to withdraw funds' do
    expect(subject).to respond_to(:withdraw).with(1).argument
    # subject.print_1()
    subject.deposit(500)
    subject.withdraw(100)
    expect(subject.balance).to eq(400)
    expect(subject.bank_statement).to eq(["date || credit || debit || balance", "23-10-2019 || 500 ||    || 500","23-10-2019 ||  || 100   || 400"])
  end

it 'displays bank statement seperated by transaction type on each line' do
  subject.deposit(500)
  subject.withdraw(100)
  expect(subject.display).to eq(["date || credit || debit || balance", "23-10-2019 || 500 ||    || 500", "23-10-2019 ||  || 100   || 400"] )
end




end
