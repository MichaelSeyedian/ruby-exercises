RSpec.describe 'one pattern' do

  it 'one more' do
    words = ["bigger", "better", "more", "improved", "advantageous"]
    count = 0
    words.each do |word|
      count += 1 if word == 'more'
    end
    exactly_one = count == 1
    expect(exactly_one).to eq(true)
  end

  it 'not even one ring' do
    ornaments = ["bracelet", "anklet", "earring"]
    count = 0

    ornaments.each do |ornament|
      # Your code goes here
      count += 1 if ornament == 'ring'
    end

    exactly_one_ring = count == 1

    expect(exactly_one_ring).to eq(false)
  end

  it 'not just one ring' do
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    count = 0
    # Your code goes here
    ornaments.each { |ornament| count += 1 if ornament == 'ring' }

    exactly_one_ring = count == 1

    expect(exactly_one_ring).to eq(false)
  end

  it 'one time' do
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    count = 0

    words.each { |word| count += 1 if word == 'time' }

    exactly_one_time = count == 1

    expect(exactly_one_time).to eq(true)
  end

  it 'one double digit number' do
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    count = 0

    numbers.each { |num| count += 1 if num.to_s.length == 2 }

    exactly_one_double_digit = count == 1

    expect(exactly_one_double_digit).to eq(true)
  end

  it 'not one even number' do
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    count = 1

    numbers.each { |num| count += 1 if num.even? }

    exactly_one_even_number = count == 1
    
    expect(exactly_one_even_number).to eq(false)
  end
end
