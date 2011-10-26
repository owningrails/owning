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
  end
end