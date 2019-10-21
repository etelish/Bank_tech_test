require './Bank_tech_test'
require 'date'


describe Statement do
  it "has a balance of zero" do
  expect(subject.balance).to eq(0)
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
    expect(subject.date).to eq("2012-01-10")
  end






end
