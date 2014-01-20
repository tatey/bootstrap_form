class BootstrapForm::Builder < ActionView::Helpers::FormBuilder
  attr_reader :template

  def errors method
    if errors? method
      template.content_tag :span, error_message(method), class: 'help-block'
    end
  end

  def group method, &block
    classes = ['form-group']
    classes << 'has-error' if errors? method

    template.content_tag :div, template.capture(new_group(method), &block), class: classes.join(' ')
  end

  private

  def error_message method
    object.errors[method].to_sentence
  end

  def errors? method
    object.errors[method].any?
  end

  def new_group method
    BootstrapForm::Group.new builder: self, method: method, template: template
  end
end
