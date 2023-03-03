- dashboard: opportunity_trends__pipeline_details
  title: Opportunity Trends & Pipeline Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: PbX1EeoBk6OwE13TBkJQOA
  elements:
  - title: Opportunity Trends & Pipeline Details
    name: Opportunity Trends & Pipeline Details
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_grid
    fields: [opportunity_pipeline.opportunity_id, opportunity_pipeline.opportunity_name,
      opportunity_pipeline.account_name, opportunity_pipeline.opportunity_created_date,
      opportunity_pipeline.opportunity_closed_date, opportunity_pipeline.billing_country,
      opportunity_pipeline.industry, opportunity_pipeline.opportunity_owner_name,
      opportunity_pipeline.opportunity_stage, opportunity_pipeline.probability, opportunity_pipeline.sum_of_total_sale_amount]
    sorts: [opportunity_pipeline.sum_of_total_sale_amount desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{measure: count_of_opportunity_id, based_on: opportunity_pipeline.opportunity_id,
        expression: '', label: Count of Opportunity ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_account_id, based_on: opportunity_pipeline.account_id,
        expression: '', label: Count of Account ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: 'Total # of
          Opportunities (Open)', based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure,
        measure: total_of_opportunities_open, type: count_distinct, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      opportunity_pipeline.user_full_name: Opportunity Owner
      opportunity_pipeline.sum_of_total_sale_amount_conv: Opportunity Value
      opportunity_pipeline_new.sum_of_total_sale_amount: Opportunity Value
      opportunity_pipeline.opportunity_owner_name: Opportunity Owner
      opportunity_pipeline.sum_of_total_sale_amount: Opportunity Value
    series_cell_visualizations:
      opportunity_pipeline_new.sum_of_total_sale_amount:
        is_active: true
      opportunity_pipeline_new.sum_of_total_sale_amount_conv:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [opportunity_pipeline.opportunity_id]
    y_axes: []
    hidden_pivots: {}
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Industry: opportunity_pipeline.industry
      Opportunity Is Closed (Yes / No): opportunity_pipeline.opportunity_is_closed
      Opportunity Is Won (Yes / No): opportunity_pipeline.opportunity_is_won
      Country: opportunity_pipeline.billing_country
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 0
    col: 0
    width: 24
    height: 14
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.opportunity_created_date
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.target_currency
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.billing_country
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.opportunity_owner_name
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.industry
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.opportunity_is_closed
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
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.opportunity_is_won
