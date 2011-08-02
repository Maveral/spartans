module ApplicationHelper
  
  def include_wysiwyg
    tinymce_init = javascript_tag do
      "tinyMCE.init({theme: 'advanced', mode: 'textareas'});"
    end
    content_for :head, javascript_include_tag("tiny_mce/tiny_mce")+tinymce_init
  end
  
end
