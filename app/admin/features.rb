ActiveAdmin.register Feature do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :code, :unitprice, :maxlimit, :plan_id
  #
  # or
  #
  permit_params do
    permitted = %i[name code unitprice maxlimit plan_id]
    permitted << :other if params[:action] == 'create'
    permitted
  end
end
