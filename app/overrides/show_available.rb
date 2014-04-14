Deface::Override.new(:virtual_path  => "spree/admin/products/index",
                     :insert_after  => "erb[loud]:contains('product.display_price.to_html')",
                     :text          => "<td class=\"align-center\">
                                            <% if product.available? %>                          
                                                  <%= product.available_on.strftime(\"%Y-%m-%d\") %><br/><br/>
                                                  <%= button_link_to 'unavailable', controller: 'products', action: 'unavailable', :pid => product.id %>
                                            <% else %>
                                                  currently unavailable<br/>
                                                  <%= product.available_on %><br/>
                                                  <%= button_link_to 'available', controller: 'products', action: 'available', :pid => product.id %>
                                            <% end %>
                                        </td>", 
                     :name          => "show_available")