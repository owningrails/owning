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
    
    def text_field(name)
      @template.content_tag :div, :class => "field" do
        label(name) + @template.tag(:br) + super
      end
    end
    
    def errors
      if @object.errors.any?
        @template.render "forms/errors", :object => @object
      end
    end
    
    def actions(&block)
      content = submit
      if block
        content << @template.capture(&block)
      end
      @template.content_tag :div, :class => "actions" do
        content
      end
    end
  end
end