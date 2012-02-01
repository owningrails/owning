module FormHelper
  def labelled_form_for(record_or_name_or_array, *args, &proc)
    options = args.extract_options!
    form_for(record_or_name_or_array, *(args << options.merge(:builder => LabellingFormBuilder)), &proc)
  end
  
  class LabellingFormBuilder < ActionView::Helpers::FormBuilder
    ### Exercise: refactor some of rooms/_form.html.erb in here.
    # NOTE:
    # Use @template to get access to other helpers, eg.:
    #
    #   @template.content_tag(...) # instead of content_tag(...)
    #   @template.render(...) # instead of render(...)
    #
    
    %w( text_field text_area ).each do |type|
      class_eval <<-RUBY
        def #{type}(name)
          @template.content_tag :div,
            label(name) + @template.tag(:br) + super,
            :class => "field"
        end
      RUBY
    end
    
    def errors
      if @object.errors.any?
        @template.render "form/errors", :object => @object
      end
    end
  end
end