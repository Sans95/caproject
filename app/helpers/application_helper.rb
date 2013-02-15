module ApplicationHelper
    def link_to_add_fields(name, f, association,p, div_id, link_class='')
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render( p,  {:f => builder})
    end
    link_to_function(name, "add_fields('#{div_id}', \"#{association}\", \"#{escape_javascript(fields)}\")", :class => "#{link_class}") 
  end

end
