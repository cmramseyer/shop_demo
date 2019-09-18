context.instance_eval  do
  table_for(issues, sortable: true, :class => 'index_table') do
    column :error_type
    column :value
  end
end