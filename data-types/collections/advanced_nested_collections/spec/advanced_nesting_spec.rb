require_relative 'nesting'
# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.
# If you spot an error or want to make this exercise better, please let us know!


RSpec.describe 'Advanced Nested Collections' do
  it 'test 1' do
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    expected = ["Jeff", "Zach", "Samantha"]
    expect(employees).to eq(expected)
  end

  it 'test 2' do
    # Find the ingredients for pancakes
    pancake_ingredients = stores[:dennys][:dishes].find { |dish|
      dish[:name] == "Pancakes"
    }[:ingredients]

    expected = ["Flour", "Eggs", "Milk", "Syrup"]
    expect(pancake_ingredients).to eq(expected)
  end

  it 'test 3' do
    # Find the price of risotto
    risotto_price = stores[:olive_garden][:dishes].find { |dish|
      dish[:name] == "Risotto"
    }[:price]

    expect(risotto_price).to eq(12)
  end

  it 'test 4' do
    # Find the ingredients for a Big Mac
    big_mac_ingredients = stores[:macdonalds][:dishes].find { |dish|
      dish[:name] == "Big Mac"
    }[:ingredients]

    expected = ['Bun','Hamburger','Ketchup','pickles']
    expect(big_mac_ingredients).to eq(expected)
  end

  it 'test 5' do
    # Find a list of restaurants
    store_names = stores.keys

    expected = [:olive_garden, :dennys, :macdonalds]
    expect(store_names).to eq(expected)
  end

  it 'test 6' do
    # Find dishes names for Olive Garden
    # .map is a more sophisticated alternative to .each. .map collects the reults of the iteration in a new array, so you don't have to use a 'collector' (empty array). Use .map! to alter the original array (or hash).
    dishes_names = stores[:olive_garden][:dishes].map { |dish|
      dish[:name]
    }

    expect(dishes_names).to eq(['Risotto', 'Steak'])
  end

  it 'test 7' do
    # Return a list of employees across
    # all restaurants
    employee_names = stores.flat_map { |store, data|
      data[:employees]
    }

    # employee_names = stores.flat_map { |store| store[1][:employees] }

    # old code using each:

    # employee_names = []
    #
    # stores.each { |store|
    #   store[1][:employees].each { |employee|
    #     employee_names << employee
    #   }
    # }

    expected = ["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"]
    expect(employee_names).to eq(expected)
  end

  it 'test 8' do
    # Return a list of all ingredients
    # across all restaurants

    ingredients = stores.flat_map { |store, data|
      data[:dishes].flat_map { |attribute|
        attribute[:ingredients]
      }
    }

    # old code using each:

    # ingredients = []
    #
    # stores.each { |store|
    #   store[1][:dishes].each { |dish|
    #     dish[:ingredients].each { |ingredient|
    #       ingredients << ingredient
    #     }
    #   }
    # }

    expected = [
      "Rice",
      "Cheese",
      "Butter",
      "Beef",
      "Garlic",
      "Flour",
      "Eggs",
      "Milk",
      "Syrup",
      "Flour",
      "Eggs",
      "Syrup",
      "Bun",
      "Hamburger",
      "Ketchup",
      "pickles",
      "Potatoes",
      "Salt"
    ]
    expect(ingredients).to eq(expected)
  end

  it 'test 9' do
    # Return the full menu price for Olive Garden
    full_menu_price = stores[:olive_garden][:dishes].map { |dish|
      dish[:price]
    }.sum

    # old code before refactoring:

    # full_menu_price = 0
    #
    # stores[:olive_garden][:dishes].each { |dish|
    #   full_menu_price += dish[:price]
    # }

    expect(full_menu_price).to eq(27)
  end

  it 'test 10' do
    # Return the full menu for Olive Garden
    olive_garden_menu = {}

    stores[:olive_garden][:dishes].map { |dish|
      olive_garden_menu[dish[:name]] = dish
    }

    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      }
    }
    expect(olive_garden_menu).to eq(expected)
  end

  it 'test 11' do
    # Return a full menu across all restaurants
    full_menu = {}

    stores.map { |store, data|
      data[:dishes].map { |dish|
        full_menu[dish[:name]] = dish
      }
    }

    # old code before refactoring:

    # full_menu = {}
    # stores.each { |store|
    #   store[1][:dishes].each { |dish|
    #     full_menu[dish[:name]] = {}
    #   }
    # }
    #
    # stores.each { |store|
    #   store[1][:dishes].each { |dish|
    #     full_menu[dish[:name]] = dish
    #   }
    # }

    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      },
      "Pancakes" => {
        :name => "Pancakes",
        :ingredients => ["Flour", "Eggs", "Milk", "Syrup"],
        :price => 10
      },
      "Waffles" => {
        :name => "Waffles",
        :ingredients => ["Flour", "Eggs", "Syrup"],
        :price => 7
      },
      "Big Mac" => {
        :name => "Big Mac",
        :ingredients => ["Bun", "Hamburger", "Ketchup", "pickles"],
        :price => 5
      },
      "Fries" => {
        :name => "Fries",
        :ingredients => ["Potatoes", "Salt"],
        :price => 2
      }
    }
    expect(full_menu).to eq(expected)
  end
end
