module FormHelper
  def labelled_form_for(record_or_name_or_array, *args, &proc)
    options = args.extract_options!
    form_for(record_or_name_or_array, *(args << options.merge(:builder => LabellingFormBuilder)), &proc)
  end
  
  class LabellingFormBuilder < ActionView::Helpers::FormBuilder
    
  end
end
