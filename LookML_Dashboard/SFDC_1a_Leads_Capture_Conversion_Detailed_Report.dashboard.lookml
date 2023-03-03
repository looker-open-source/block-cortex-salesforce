- dashboard: leads_capture__conversion_details
  title: Leads Capture & Conversion Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: c4qpwEnoGO4Hb8eMymKPLt
  elements:
  - title: Leads Capture & Conversion Details
    name: Leads Capture & Conversion Details
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_grid
    fields: [leads_capture_conversion.lead_id, leads_capture_conversion.lead_name,
      leads_capture_conversion.opportunity_name, leads_capture_conversion.lead_created_date,
      leads_capture_conversion.lead_converted_date, leads_capture_conversion.lead_owner_name,
      lead_response_time_hours, leads_capture_conversion.lead_industry, leads_capture_conversion.lead_country,
      leads_capture_conversion.lead_source, leads_capture_conversion.lead_status,
      leads_capture_conversion.Sum_of_Total_sale_amount]
    sorts: [leads_capture_conversion.Sum_of_Total_sale_amount desc, leads_capture_conversion.opportunity_name
        desc]
    limit: 5000
    total: true
    dynamic_fields: [{category: dimension, expression: 'diff_hours(${leads_capture_conversion.lead_created_time},${leads_capture_conversion.lead_first_response_time})',
        label: Lead Response Time (hours), value_format: !!null '', value_format_name: !!null '',
        dimension: lead_response_time_hours, _kind_hint: dimension, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      leads_capture_conversion.user_full_name: Lead Owner
      leads_capture_conversion.Sum_of_Total_sale_amount: Lead Value/Amount
      leads_capture_conversion.Sum_of_Total_sale_amount_conv: Lead Value/Amount
      leads_capture_conversion.lead_name: Lead First & Last Name
      leads_capture_conversion.lead_owner_name: Lead Owner
    series_cell_visualizations:
      leads_capture_conversion.Sum_of_Total_sale_amount:
        is_active: false
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [leads_capture_conversion.lead_id]
    y_axes: []
    hidden_pivots: {}
    listen:
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Is Converted (Yes / No): leads_capture_conversion.is_converted
      Lead Created Date: leads_capture_conversion.lead_created_date
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Lead Created Date
    title: Lead Created Date
    type: field_filter
    default_value: this year to second
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.lead_created_date
  - name: Target Currency
    title: Target Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: popover
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.target_currency
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.lead_country
  - name: Industry
    title: Industry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.lead_industry
  - name: Lead Owner
    title: Lead Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.lead_owner_name
  - name: Lead Source
    title: Lead Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.lead_source
  - name: Is Converted (Yes / No)
    title: Is Converted (Yes / No)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: inline
    model: cortex_salesforce
    explore: leads_capture_conversion
    listens_to_filters: []
    field: leads_capture_conversion.is_converted
