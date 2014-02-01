class BootstrapForm::Group
  attr_reader :builder
  attr_reader :method
  attr_reader :template

  def initialize attributes = {}
    @builder = attributes.fetch :builder
    @method  = attributes.fetch :method
    @template = attributes.fetch :template
  end

  def errors *args
    builder.errors method, *args
  end

  def label *args
    builder.label method, *args
  end

  def number_field *args
    builder.number_field method, *args
  end

  def text_area *args
    builder.text_area method, *args
  end

  def text_field *args
    builder.text_field method, *args
  end

  def hint
    template.content_tag :span,
      I18n.t("bootstrap.hints.#{builder.object.class.name.downcase}.#{method}"),
      class: 'help-block'
  end

  def value
    builder.object.send method
  end
end
