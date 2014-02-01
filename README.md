# BootstrapForm

A very simple form builder for rails that makes few assumptions about your markup.

1. You want to wrap inputs in a group
2. You want to render inline errors
3. You like Bootstrap

This library has been extracted from the [Tug](https://tugapp.com) project.

## Installation

Add this line to your application's Gemfile:

    gem 'bootstrap_form', github: 'tatey/bootstrap_form'

And then execute:

    $ bundle

## Usage

Given the following template:

    <%= form_for configuration, url: project_campfire_config_path(project), builder: BootstrapForm::Builder do |form| %>
      <fieldset>
        <%= form.group :subdomain do |group| %>
          <%= group.label class: 'control-label' %>
          <%= group.text_field class: 'form-control' %>
          <%= group.errors %>
        <% end %>
        <button type="submit" class="btn btn-success">Save</button>
      </fieldset>
    <% end %>

The following HTML is rendered is if the form has errors:

    <form accept-charset="UTF-8" action="/projects/4043/notifications/campfire" class="new_campfire_config ng-pristine ng-valid" id="new_campfire_config" method="post">
      <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="Qv1hqmjazWhcmH3EWC8D++D5hLMsjmf6oW1ey9Yh7Dc="></div>
      <fieldset>
        <div class="form-group has-error">
          <label class="control-label" for="campfire_config_subdomain">Subdomain</label>
          <input class="form-control" id="campfire_config_subdomain" name="campfire_config[subdomain]" type="text" value="">
          <span class="help-block">can't be blank</span>
        </div>
        <button type="submit" class="btn btn-success">Save</button>
      </fieldset>
    </form>

## Changelog

### 2014-02-02

* Add `Group#number_field`

### 2014-01-21

* Initial release

## Contributing

1. Fork it (https://github.com/tatey/bootstrap_form/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Run tests (`rake`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Copyright

Copyright 2014 Tate Johnson. MIT LICENSE. See LICENSE.txt for details.
