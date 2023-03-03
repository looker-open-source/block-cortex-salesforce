- dashboard: sales_activities__engagement_overdue_opportunities_details
  title: Sales Activities & Engagement (Overdue Opportunities) Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cAPY5RBZuVEN6UYo5ICzuy
  elements:
  - title: Overdue Opportunities Detail Report
    name: Overdue Opportunities Detail Report
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_grid
    fields: [sales_activities_engagement_opportunity_pipeline.opportunity_name, sales_activities_engagement_opportunity_pipeline.opportunity_closed_date,
      sales_activities_engagement_opportunity_pipeline.opportunity_stage, overdue_days,
      sales_activities_engagement_opportunity_pipeline.probability, sales_activities_engagement_opportunity_pipeline.overdue_days_range,
      sales_activities_engagement_opportunity_pipeline.user_full_name, sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id]
    filters:
      sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'No'
      sales_activities_engagement_opportunity_pipeline.overdue_days_tier: "-Below\
        \ 1,-Undefined"
    sorts: [overdue_days desc, sales_activities_engagement_opportunity_pipeline.probability
        desc, sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id
        desc, sales_activities_engagement_opportunity_pipeline.opportunity_name desc,
      sales_activities_engagement_opportunity_pipeline.opportunity_stage desc]
    limit: 500
    dynamic_fields: [{category: dimension, expression: 'diff_days(${sales_activities_engagement_opportunity_pipeline.opportunity_closed_date},now())',
        label: Overdue (days), value_format: !!null '', value_format_name: !!null '',
        dimension: overdue_days, _kind_hint: dimension, _type_hint: number}]
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
      sales_activities_engagement_opportunity_pipeline.opportunity_name: Opportunity
        Name
      sales_activities_engagement_opportunity_pipeline.opportunity_closed_date: Target
        Close Date
      sales_activities_engagement_opportunity_pipeline.opportunity_stage: Stage
      sales_activities_engagement_opportunity_pipeline.probability: Probability
      sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id: Overdue
        Opportunities
      sales_activities_engagement_opportunity_pipeline.user_full_name: Opportunity
        Owner
    series_cell_visualizations:
      sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id:
        is_active: false
    hidden_fields: [sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id]
    series_types: {}
    defaults_version: 1
    y_axes: []
    listen:
      Opportunity Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Opportunity Stage: sales_activities_engagement_opportunity_pipeline.opportunity_stage
      Opportunity Owner: sales_activities_engagement_opportunity_pipeline.user_full_name
      Overdue Days Range: sales_activities_engagement_opportunity_pipeline.overdue_days_range
      Industry: sales_activities_engagement_opportunity_pipeline.industry
    row: 0
    col: 0
    width: 24
    height: 12
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
    field: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
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
    field: sales_activities_engagement_opportunity_pipeline.billing_country
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
    field: sales_activities_engagement_opportunity_pipeline.industry
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
    field: sales_activities_engagement_opportunity_pipeline.user_full_name
  - name: Opportunity Stage
    title: Opportunity Stage
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
    field: sales_activities_engagement_opportunity_pipeline.opportunity_stage
  - name: Overdue Days Range
    title: Overdue Days Range
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - 1 to 24
      - 25 to 49
      - 50 to 99
      - 100 to 199
      - 200 to 499
      - 500 to 999
      - 1000 or Above
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement_opportunity_pipeline.overdue_days_range
