- dashboard: hackathon_team_7
  title: Hackathon Team 7
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: F3vbvHaXNysjRr6Rnrw3mL
  elements:
  - title: Hackathon Team 7
    name: Hackathon Team 7
    model: hackaton_team_7
    type: table
    filters: {}

    #Addition of fields
    explore: page_loads_by_month
    fields: [page_loads_by_month.month, page_loads_by_month.page_loads]
    fill_fields: [page_loads_by_month.month]

    sorts: [page_loads_by_month.month desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Month: page_loads_by_month.month
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 3 months
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hackaton_team_7
    explore: page_loads_by_month
    listens_to_filters: []
    field: page_loads_by_month.month
