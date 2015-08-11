require 'test/unit'
require 'active_model'
require 'color-schema-validator'

class TestColorSchemaValidator < Test::Unit::TestCase
  setup do
    model_class = Struct.new(:model) do
      include ActiveModel::Validations

      def self.name
        'Model'
      end

      attr_accessor :color
      validates :color, color_schema: true
    end

    @instance = model_class.new(:model)
  end

  test "valid color schema strings" do
    @instance.color = '#012345'
    assert_true @instance.valid?
  end

  test "invalid color schema strings" do
    @instance.color = ''
    assert_false @instance.valid?
  end
end
