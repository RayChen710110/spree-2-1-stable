Deface::Override.new(:virtual_path  => "spree/admin/products/index",
                     :insert_after  => "erb[loud]:contains('master_default_price_amount')",
                     :text          => "<th><%= Spree.t(:available_on) %></th>",
                     :name          => "add_available_on_column")
