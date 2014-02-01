require 'minitest/autorun'
require 'bootstrap_form'

class BootstrapForm::GroupTest < Minitest::Unit::TestCase
  def dont_care
    nil
  end

  def test_errors_delegates_to_builder
    builder = Minitest::Mock.new
    builder.expect :errors, dont_care, [:attr, {key: 'value'}]
    group = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.errors key: 'value'

    builder.verify
  end

  def test_label_delegates_to_builder
    builder = Minitest::Mock.new
    builder.expect :label, dont_care, [:attr, {key: 'value'}]
    group = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.label key: 'value'

    builder.verify
  end

  def test_number_field_delegates_to_builder
    builder = Minitest::Mock.new
    builder.expect :number_field, dont_care, [:attr, {key: 'value'}]
    group = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.number_field key: 'value'

    builder.verify
  end

  def test_text_area_delegates_to_builder
    builder = Minitest::Mock.new
    builder.expect :text_area, dont_care, [:attr, {key: 'value'}]
    group = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.text_area key: 'value'

    builder.verify
  end

  def test_text_field_delegates_to_builder
    builder = Minitest::Mock.new
    builder.expect :text_field, dont_care, [:attr, {key: 'value'}]
    group   = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.text_field key: 'value'

    builder.verify
  end

  def test_hint_is_span_with_translation
    template = Minitest::Mock.new
    template.expect :content_tag, dont_care, [:span, 'translation missing: en.bootstrap.hints.object.attr', class: 'help-block']
    builder = Minitest::Mock.new
    builder.expect :object, Object.new
    group    = BootstrapForm::Group.new builder: builder, method: :attr, template: template

    group.hint

    template.verify
  end

  def test_value_delegates_to_builder
    object = Minitest::Mock.new
    object.expect :send, dont_care, [:attr]
    builder = Minitest::Mock.new
    builder.expect :object, object
    group   = BootstrapForm::Group.new builder: builder, method: :attr, template: dont_care

    group.value

    object.verify
  end
end
