- dashboard: sales_activities__engagement_opportunity_activities_details
  title: Sales Activities & Engagement (Opportunity Activities) Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: o13DrWSxBush54ggCidA0k
  elements:
  - title: Sales Activities & Engagement (Opportunity Activities) Details
    name: Sales Activities & Engagement (Opportunity Activities) Details
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: looker_grid
    fields: [sales_activities_engagement.opportunity_name, sales_activities_engagement.opportunity_created_date,
      sales_activities_engagement.opportunity_owner, sales_activities_engagement.account_name,
      sales_activities_engagement.opportunity_id, sales_activities_engagement.stage_name,
      sales_activities_engagement.count_opportunity_owner, sales_activities_engagement.count_opportunity_id,
      sales_activities_engagement.count_opportunity_activity, sales_activities_engagement.activity_per_opportunity,
      sales_activities_engagement.activity_per_opportunity_owner]
    filters:
      sales_activities_engagement.opportunity_id: "-NULL"
    sorts: [sales_activities_engagement.opportunity_created_date desc, sales_activities_engagement.opportunity_id
        desc]
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
      sales_activities_engagement.count_opportunity_id: Total Opportunities
      sales_activities_engagement.count_opportunity_owner: Total Opportunity Owners
      sales_activities_engagement.count_activity: No. of Activities
      sales_activities_engagement.count_opportunity_activity: No. of Activities
      sales_activities_engagement.stage_name: Opportunity Stage
    series_cell_visualizations:
      sales_activities_engagement.activity_per_opportunity:
        is_active: true
    hidden_fields: [sales_activities_engagement.opportunity_id]
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    y_axes: []
    listen:
      Opportunity Created Date: sales_activities_engagement.opportunity_created_date
      Country: sales_activities_engagement.account_country
      Industry: sales_activities_engagement.account_industry
      Opportunity Owner: sales_activities_engagement.opportunity_owner
      Activity Status: sales_activities_engagement.status
      Opportunity Is Closed (Yes / No): sales_activities_engagement.is_closed
      Opportunity Is Won (Yes / No): sales_activities_engagement.is_won
    row: 0
    col: 0
    width: 24
    height: 8
  filters:
  - name: Opportunity Created Date
    title: Opportunity Created Date
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
    field: sales_activities_engagement.opportunity_created_date
  - name: Country
    title: Country
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
    field: sales_activities_engagement.account_country
  - name: Industry
    title: Industry
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
    field: sales_activities_engagement.account_industry
  - name: Opportunity Owner
    title: Opportunity Owner
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
    field: sales_activities_engagement.opportunity_owner
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
  - name: Opportunity Is Closed (Yes / No)
    title: Opportunity Is Closed (Yes / No)
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
    field: sales_activities_engagement.is_closed
  - name: Opportunity Is Won (Yes / No)
    title: Opportunity Is Won (Yes / No)
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
    field: sales_activities_engagement.is_won
