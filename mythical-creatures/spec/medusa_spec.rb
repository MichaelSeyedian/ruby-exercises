require 'rspec'
require '../lib/medusa'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    # your code here
    medusa = Medusa.new('Mel')
    victim_1 = Person.new('Hickory')
    victim_2 = Person.new('Dickory')
    victim_3 = Person.new('Doc')
    victim_4 = Person.new('Shasta')

    medusa.stare(victim_1)
    expect(medusa.statues.count).to eq(1)
    medusa.stare(victim_2)
    expect(medusa.statues.count).to eq(2)
    medusa.stare(victim_3)
    expect(medusa.statues.count).to eq(3)
    medusa.stare(victim_4)
    expect(medusa.statues.count).to eq(3)
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    # your code here
    medusa = Medusa.new('Mel')
    victim_1 = Person.new('Hickory')
    victim_2 = Person.new('Dickory')
    victim_3 = Person.new('Doc')
    victim_4 = Person.new('Shasta')

    medusa.stare(victim_1)
    expect(medusa.statues.count).to eq(1)
    expect(victim_1.stoned?).to be true
    medusa.stare(victim_2)
    expect(medusa.statues.count).to eq(2)
    expect(victim_2.stoned?).to be true
    medusa.stare(victim_3)
    expect(medusa.statues.count).to eq(3)
    expect(victim_3.stoned?).to be true
    medusa.stare(victim_4)
    expect(medusa.statues.count).to eq(3)
    expect(victim_4.stoned?).to be true
    expect(victim_1.stoned?).to be false
    expect(medusa.statues.first.name).to eq('Dickory')
    expect(medusa.statues.last.name).to eq('Shasta')
  end
end
