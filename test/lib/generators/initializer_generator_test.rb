require "test_helper"
require "generators/initializer/initializer_generator"

class InitializerGeneratorTest < Rails::Generators::TestCase
  tests InitializerGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  test 'copy initializer file' do
    run_generator ['core_extensions']

    assert_file 'config/initializers/core_extensions.rb' do |initializer|
      assert_match("# Add initialization content here", initializer)
    end
  end

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
