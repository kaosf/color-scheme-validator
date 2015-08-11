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

  data(
    '6 hex 1'       => '#012345',
    '6 hex 2'       => '#6789AB',
    '6 hex 3'       => '#CDEF01',
    '6 hex 2 lower' => '#6789ab',
    '6 hex 3 lower' => '#cdef01',
    '3 hex 1'       => '#012',
    '3 hex 2'       => '#345',
    '3 hex 3'       => '#678',
    '3 hex 4'       => '#9AB',
    '3 hex 5'       => '#CDE',
    '3 hex 6'       => '#F01',
    '3 hex 4 lower' => '#9ab',
    '3 hex 5 lower' => '#cde',
    '3 hex 6 lower' => '#f01',
    '0'             => '#000000',
    '1'             => '#111111',
    '2'             => '#222222',
    '3'             => '#333333',
    '4'             => '#444444',
    '5'             => '#555555',
    '6'             => '#666666',
    '7'             => '#777777',
    '8'             => '#888888',
    'A'             => '#AAAAAA',
    'B'             => '#BBBBBB',
    'C'             => '#CCCCCC',
    'D'             => '#DDDDDD',
    'E'             => '#EEEEEE',
    'F'             => '#FFFFFF',
    'a'             => '#aaaaaa',
    'b'             => '#bbbbbb',
    'c'             => '#cccccc',
    'd'             => '#dddddd',
    'e'             => '#eeeeee',
    'f'             => '#ffffff')
  test "valid color schema strings" do |data|
    @instance.color = data
    assert_true @instance.valid?
  end

  data(
    'empty'        => '',
    'without #'    => '012345',
    '4 characters' => '#0123',
    '5 characters' => '#01234',
    '7 characters' => '#0123456',
    'not hex'      => '#01234g',
    'attack'       => "#000000\nalert('hello');")
  test "invalid color schema strings" do |data|
    @instance.color = data
    assert_false @instance.valid?
  end
end
