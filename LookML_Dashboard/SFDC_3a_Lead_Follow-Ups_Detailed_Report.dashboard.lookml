- dashboard: sales_activities__engagement_lead_followups_details
  title: Sales Activities & Engagement (Lead Follow-Ups) Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: tNJKqWxd995QNBm02s4YpU
  elements:
  - title: Sales Activities & Engagement (Lead Follow-Ups) Details
    name: Sales Activities & Engagement (Lead Follow-Ups) Details
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: looker_grid
    fields: [sales_activities_engagement.lead_name, sales_activities_engagement.lead_owner,
      sales_activities_engagement.lead_id, sales_activities_engagement.lead_country,
      sales_activities_engagement.lead_created_date_date, sales_activities_engagement.lead_status,
      sales_activities_engagement.lead_industry, sales_activities_engagement.count_lead_owner,
      sales_activities_engagement.count_lead_id, sales_activities_engagement.count_activity,
      sales_activities_engagement.activity_per_lead, sales_activities_engagement.activity_per_lead_owner]
    filters:
      sales_activities_engagement.lead_id: "-NULL"
      sales_activities_engagement.opportunity_id: 'NULL'
    sorts: [sales_activities_engagement.lead_created_date_date desc]
    limit: 500
    total: true
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
      sales_activities_engagement.lead_created_date_date: Lead Created Date
      sales_activities_engagement.created_date_date: Activity Date
      sales_activities_engagement.count_lead: Total Lead Owner
      sales_activities_engagement.count_lead_id: Total Leads
      sales_activities_engagement.count_activity: No. of Followups
      sales_activities_engagement.activity_per_lead: Follow-Up Contact Rate per Lead
      sales_activities_engagement.activity_per_lead_owner: Follow-Ups per Lead Owner
      sales_activities_engagement.count_lead_owner: Total Lead Owners
    series_cell_visualizations:
      sales_activities_engagement.count_lead:
        is_active: false
    hidden_fields: [sales_activities_engagement.lead_id]
    defaults_version: 1
    series_types: {}
    truncate_column_names: false
    y_axes: []
    listen:
      Lead Country: sales_activities_engagement.lead_country
      Lead Owner: sales_activities_engagement.lead_owner
      Lead Created Date: sales_activities_engagement.lead_created_date_date
      Activity Status: sales_activities_engagement.status
      Lead Industry: sales_activities_engagement.lead_industry
      Lead Status: sales_activities_engagement.lead_status
      Lead Is Converted (Yes / No): sales_activities_engagement.is_converted
    row: 0
    col: 0
    width: 24
    height: 8
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
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.lead_created_date_date
  - name: Lead Country
    title: Lead Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.lead_country
  - name: Lead Industry
    title: Lead Industry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.lead_industry
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
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.lead_owner
  - name: Lead Status
    title: Lead Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.lead_status
  - name: Activity Status
    title: Activity Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.status
  - name: Lead Is Converted (Yes / No)
    title: Lead Is Converted (Yes / No)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: inline
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement.is_converted
