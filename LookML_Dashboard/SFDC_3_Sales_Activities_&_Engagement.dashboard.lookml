- dashboard: sales_activities__engagement
  title: Sales Activities & Engagement
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5xJIQzqAaZl3r3hnZj2Eu1
  elements:
  - title: Avg Follow Up Contact Rate on Leads
    name: Avg Follow Up Contact Rate on Leads
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.count_activity, sales_activities_engagement.count_lead_id,
      sales_activities_engagement.activity_per_lead]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.is_converted: ''
      sales_activities_engagement.lead_status: ''
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_lead_id}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Follow Up Contact Rate on Leads
    value_format: "###0.00"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: [sales_activities_engagement.count_activity, sales_activities_engagement.count_lead_id]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed follow ups on Leads created in the selected
      date range
    listen:
      Sales Representative: sales_activities_engagement.lead_owner
      Country: sales_activities_engagement.lead_country
      Created Date: sales_activities_engagement.lead_created_date_date
      Industry: sales_activities_engagement.lead_industry
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Navigation Bar
    name: Navigation Bar
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: single_value
    fields: [sales_activities_engagement.dash_nav]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Sales Activities & Engagement
    type: text
    title_text: Sales Activities & Engagement
    subtitle_text: <font color="#c1c1c1">What is our overall average sales engagement
      activity?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Who are my top and bottom sales reps by activity
      and opportunity value?</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Do we have any opportunities that need immediate
      follow up?</font>
    body_text: ''
    row: 20
    col: 0
    width: 24
    height: 1
  - title: Delayed Opportunities Trend
    name: Delayed Opportunities Trend
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_column
    fields: [sales_activities_engagement_opportunity_pipeline.opportunity_closed_month,
      sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id]
    fill_fields: [sales_activities_engagement_opportunity_pipeline.opportunity_closed_month]
    filters:
      sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'No'
      overdue_days: ">0"
    sorts: [sales_activities_engagement_opportunity_pipeline.opportunity_closed_month
        desc]
    limit: 500
    dynamic_fields: [{category: dimension, expression: 'diff_days(${sales_activities_engagement_opportunity_pipeline.opportunity_closed_date},now())',
        label: Overdue (days), value_format: !!null '', value_format_name: !!null '',
        dimension: overdue_days, _kind_hint: dimension, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Delayed Opportunities, orientation: left, series: [{axisId: sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id,
            id: sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id,
            name: No. of Opportunities}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Target Close Month
    font_size: '10'
    series_types: {}
    series_colors:
      sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id: "#9334E6"
    series_labels:
      sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id: No.
        of Opportunities
    label_color: ["#808080"]
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Monthly number of overdue opportunities
    listen:
      Sales Representative: sales_activities_engagement_opportunity_pipeline.user_full_name
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Industry: sales_activities_engagement_opportunity_pipeline.industry
      Target Currency: sales_activities_engagement_opportunity_pipeline.target_currency
    row: 21
    col: 0
    width: 12
    height: 6
  - title: Open Opportunities with Low Recent Activity
    name: Open Opportunities with Low Recent Activity
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_grid
    fields: [sales_activities_engagement_opportunity_pipeline.opportunity_name, sales_activities_engagement_opportunity_pipeline.last_activity_date_date,
      sales_activities_engagement_opportunity_pipeline.account_name, sales_activities_engagement_opportunity_pipeline.user_full_name,
      days_since_last_activity, sales_activities_engagement_opportunity_pipeline.opportunity_stage,
      sales_activities_engagement_opportunity_pipeline.opportunity_id, sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount]
    filters:
      sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'No'
      days_since_last_activity: ">7"
    sorts: [days_since_last_activity desc, sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, expression: 'if(is_null(${sales_activities_engagement_opportunity_pipeline.last_activity_date_date}),diff_days(${sales_activities_engagement_opportunity_pipeline.opportunity_created_date},now()),diff_days(${sales_activities_engagement_opportunity_pipeline.last_activity_date_date},now()))',
        label: Days since Last Activity, value_format: !!null '', value_format_name: !!null '',
        dimension: days_since_last_activity, _kind_hint: dimension, _type_hint: number}]
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
      sales_activities_engagement_opportunity_pipeline.opportunity_name: Opportunity
        Name
      sales_activities_engagement_opportunity_pipeline.last_activity_date_date: Last
        Activity Date
      sales_activities_engagement_opportunity_pipeline.user_full_name: Sales Representative
      sales_activities_engagement_opportunity_pipeline.opportunity_stage: Stage
      sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount: Opportunity
        Value
      sales_activities_engagement_opportunity_pipeline.account_name: Account
      sales_activities_engagement_opportunity_pipeline.Total_Opportunity_Value: Opportunity
        Value
      sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount_conv: Opportunity
        Value
    series_cell_visualizations:
      sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount:
        is_active: true
      sales_activities_engagement_opportunity_pipeline.Total_Opportunity_Value:
        is_active: true
      sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount_conv:
        is_active: true
      days_since_last_activity:
        is_active: true
        palette:
          palette_id: f0623b7e-4f51-3b54-53c5-d3d9835da33f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#1a73e8"
          - "#E52592"
    series_types: {}
    defaults_version: 1
    hidden_fields: [sales_activities_engagement_opportunity_pipeline.opportunity_id]
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Open Opportunities with the lowest recent activities (Opportunities
      without a Last Activity Date are assumed to not have any activities since their
      Creation)
    listen:
      Sales Representative: sales_activities_engagement_opportunity_pipeline.user_full_name
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Industry: sales_activities_engagement_opportunity_pipeline.industry
      Target Currency: sales_activities_engagement_opportunity_pipeline.target_currency
    row: 27
    col: 0
    width: 24
    height: 7
  - title: Sales Representatives by Activity Count
    name: Sales Representatives by Activity Count
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: looker_pie
    fields: [no_of_activities, sales_activities_engagement.sales_rep_owner, sales_activities_engagement.sales_rep_owner_id]
    sorts: [no_of_activities desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: No. of Activities,
        value_format: !!null '', value_format_name: '', based_on: sales_activities_engagement.count_activity,
        _kind_hint: measure, measure: no_of_activities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.status: Completed}}]
    filter_expression: NOT(is_null(${sales_activities_engagement.lead_id})) OR NOT(is_null(${sales_activities_engagement.opportunity_id}))
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    series_colors: {}
    series_labels:
      opportunity_value: Revenue
      sales_activities_engagement.count_activity: No. of Activities
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: sales_activities_engagement.count_opportunity_id,
            id: sales_activities_engagement.count_opportunity_id, name: Count Opportunity
              ID}], showLabels: true, showValues: true, valueFormat: '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Sales Representative
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_value_format: ''
    series_types: {}
    defaults_version: 1
    hidden_fields: [sales_activities_engagement.sales_rep_owner_id]
    show_null_points: true
    interpolation: linear
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    note_state: collapsed
    note_display: hover
    note_text: Total completed activities by each sales representatives in the selected
      lead/opportunity created date range
    listen:
      Sales Representative: sales_activities_engagement.sales_rep_owner
      Country: sales_activities_engagement.account_lead_country
      Created Date: sales_activities_engagement.lead_opportunity_created_date_date
      Industry: sales_activities_engagement.account_lead_industry
    row: 14
    col: 0
    width: 8
    height: 6
  - title: Activity Per Open Opportunity
    name: Activity Per Open Opportunity
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activity_per_open_opportunity]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.is_closed: 'No'
      sales_activities_engagement.is_won: 'No'
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Activities
          - Open Opportunities, value_format: !!null '', value_format_name: !!null '',
        based_on: sales_activities_engagement.count_activity, _kind_hint: measure,
        measure: activities_open_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'No'}}, {category: measure,
        expression: !!null '', label: Open Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_id,
        _kind_hint: measure, measure: open_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'No'}}, {category: table_calculation,
        expression: "${activities_open_opportunities}/${open_opportunities}", label: Avg.
          Activities per Open Opportunity, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_activities_per_open_opportunity,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Activities Per Open Opportunity
    value_format: "#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed activities per open opportunity created
      in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.opportunity_owner
      Country: sales_activities_engagement.account_country
      Created Date: sales_activities_engagement.opportunity_created_date
      Industry: sales_activities_engagement.account_industry
    row: 6
    col: 6
    width: 6
    height: 2
  - title: Activity Trends For Opportunities
    name: Activity Trends For Opportunities
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: looker_line
    fields: [sales_activities_engagement.opportunity_created_month, sales_activities_engagement.activity_per_opportunity_owner,
      sales_activities_engagement.activity_per_open_opportunity, sales_activities_engagement.activity_per_closed_won_opportunity,
      sales_activities_engagement.activity_per_closed_lost_opportunity]
    fill_fields: [sales_activities_engagement.opportunity_created_month]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.opportunity_id: "-NULL"
    sorts: [sales_activities_engagement.opportunity_created_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_opportunity_owner}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${activities_open_opportunities}/${open_opportunities}",
        label: Avg. Activities per Open Opportunity, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_activities_per_open_opportunity,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${activities_closed_opportunities}/${closed_opportunities}",
        label: Avg. Activities per Closed Opportunity, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_activities_per_closed_opportunity,
        _type_hint: number, is_disabled: true}, {category: measure, expression: !!null '',
        label: Activities - Open Opportunities, value_format: !!null '', value_format_name: !!null '',
        based_on: sales_activities_engagement.count_activity, _kind_hint: measure,
        measure: activities_open_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'No'}}, {category: measure,
        expression: !!null '', label: Activities - Closed Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_activity,
        _kind_hint: measure, measure: activities_closed_opportunities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.is_closed_flag: 'Yes'}},
      {category: measure, expression: !!null '', label: Closed Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_id,
        _kind_hint: measure, measure: closed_opportunities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.is_closed_flag: 'Yes'}},
      {category: measure, expression: !!null '', label: Open Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_id,
        _kind_hint: measure, measure: open_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'No'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activity Per Opportunity, orientation: left, series: [{axisId: sales_activities_engagement.activity_per_open_opportunity,
            id: sales_activities_engagement.activity_per_open_opportunity, name: Avg.
              Activities per Open Opportunity}, {axisId: sales_activities_engagement.activity_per_closed_won_opportunity,
            id: sales_activities_engagement.activity_per_closed_won_opportunity, name: Avg.
              Activities per Closed Won Opportunity}, {axisId: sales_activities_engagement.activity_per_closed_lost_opportunity,
            id: sales_activities_engagement.activity_per_closed_lost_opportunity,
            name: Avg. Activities per Closed Lost Opportunity}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: Activity Per Sales Rep, orientation: right, series: [{axisId: sales_activities_engagement.activity_per_opportunity_owner,
            id: sales_activities_engagement.activity_per_opportunity_owner, name: Avg.
              Activities per Sales Representative}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
      sales_activities_engagement.activity_per_opportunity_owner: "#5b5e55"
      sales_activities_engagement.activity_per_open_opportunity: "#1A73E8"
      sales_activities_engagement.activity_per_closed_opportunity: "#16dbd9"
      sales_activities_engagement.activity_per_closed_won_opportunity: "#45b2e8"
      sales_activities_engagement.activity_per_closed_lost_opportunity: "#79cce8"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
      sales_activities_engagement.activity_per_opportunity_owner: Avg. Activities
        per Sales Rep
      sales_activities_engagement.activity_per_open_opportunity: Avg. Activities per
        Open Opportunity
      sales_activities_engagement.activity_per_closed_opportunity: Avg. Activities
        per Closed Opportunity
      sales_activities_engagement.activity_per_closed_won_opportunity: Avg. Activities
        per Closed Won Opportunity
      sales_activities_engagement.activity_per_closed_lost_opportunity: Avg. Activities
        per Closed Lost Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
      sales_activities_engagement.activity_per_opportunity_owner: triangle-down
    x_axis_datetime_label: "%b %y"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Monthly trend of completed activities per sales representative for
      Opportunities and completed activities per open and closed opportunity '
    listen:
      Sales Representative: sales_activities_engagement.opportunity_owner
      Country: sales_activities_engagement.account_country
      Created Date: sales_activities_engagement.opportunity_created_date
      Industry: sales_activities_engagement.account_industry
    row: 8
    col: 12
    width: 12
    height: 5
  - title: Avg Activities Per Sales Rep (on Opportunities)
    name: Avg Activities Per Sales Rep (on Opportunities)
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activity_per_opportunity_owner]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.opportunity_id: "-NULL"
      sales_activities_engagement.is_closed: ''
      sales_activities_engagement.is_won: ''
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_opportunity_owner}",
        label: Avg. Activities Per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Activity Per Sales Rep on Opportunities
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed activities per sales representative on
      opportunities created in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.opportunity_owner
      Country: sales_activities_engagement.account_country
      Created Date: sales_activities_engagement.opportunity_created_date
      Industry: sales_activities_engagement.account_industry
    row: 6
    col: 0
    width: 6
    height: 2
  - title: Delayed Opportunities by Overdue Days
    name: Delayed Opportunities by Overdue Days
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_pie
    fields: [sales_activities_engagement_opportunity_pipeline.overdue_days_range,
      no_of_opportunities]
    filters:
      sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'No'
      sales_activities_engagement_opportunity_pipeline.overdue_days_range: "-Below\
        \ 1"
    sorts: [sales_activities_engagement_opportunity_pipeline.overdue_days_range]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: !!null '', label: No. of Opportunities,
        value_format: !!null '', value_format_name: !!null '', based_on: sales_activities_engagement_opportunity_pipeline.count_of_opportunity_id,
        _kind_hint: measure, measure: no_of_opportunities, type: count_distinct, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    series_colors:
      1 to 24: "#7CB342"
      25 to 49: "#1A73E8"
      50 to 99: "#12B5CB"
      100 to 199: "#F9AB00"
      200 to 499: "#E52592"
      500 to 999: "#9334E6"
      1000 or Above: "#EA4335"
    series_labels:
      1 to 24: 1 to 24 days
      25 to 49: 25 to 49 days
      50 to 99: 50 to 99 days
      100 to 199: 100 to 199 days
      200 to 499: 200 to 499 days
      500 to 999: 500 to 999 days
      1000 or Above: 1000 days or Above
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Opportunities that are not closed as targeted by the number of days
      they are overdue
    listen:
      Sales Representative: sales_activities_engagement_opportunity_pipeline.user_full_name
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Industry: sales_activities_engagement_opportunity_pipeline.industry
      Target Currency: sales_activities_engagement_opportunity_pipeline.target_currency
    row: 21
    col: 12
    width: 12
    height: 6
  - title: Activity Per Closed-Lost Opportunity
    name: Activity Per Closed-Lost Opportunity
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activity_per_closed_lost_opportunity]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.is_closed: 'Yes'
      sales_activities_engagement.is_won: 'No'
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Activities
          - Closed Opportunities, value_format: !!null '', value_format_name: !!null '',
        based_on: sales_activities_engagement.count_activity, _kind_hint: measure,
        measure: activities_closed_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'Yes'}}, {category: measure,
        expression: !!null '', label: Closed Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_id,
        _kind_hint: measure, measure: closed_opportunities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.is_closed_flag: 'Yes'}},
      {category: table_calculation, expression: "${activities_closed_opportunities}/${closed_opportunities}",
        label: Avg. Activities per Closed Opportunity, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_activities_per_closed_opportunity,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Activities Per Closed-Lost Opportunity
    value_format: "#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: [activities_open_opportunities, open_opportunities]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed activities per closed-lost opportunity
      created in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.opportunity_owner
      Country: sales_activities_engagement.account_country
      Created Date: sales_activities_engagement.opportunity_created_date
      Industry: sales_activities_engagement.account_industry
    row: 6
    col: 18
    width: 6
    height: 2
  - title: Activity Per Closed-Won Opportunity
    name: Activity Per Closed-Won Opportunity
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activity_per_closed_won_opportunity]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.is_closed: 'Yes'
      sales_activities_engagement.is_won: 'Yes'
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Activities
          - Closed Opportunities, value_format: !!null '', value_format_name: !!null '',
        based_on: sales_activities_engagement.count_activity, _kind_hint: measure,
        measure: activities_closed_opportunities, type: count_distinct, _type_hint: number,
        filters: {sales_activities_engagement.is_closed_flag: 'Yes'}}, {category: measure,
        expression: !!null '', label: Closed Opportunities, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_id,
        _kind_hint: measure, measure: closed_opportunities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.is_closed_flag: 'Yes'}},
      {category: table_calculation, expression: "${activities_closed_opportunities}/${closed_opportunities}",
        label: Avg. Activities per Closed Opportunity, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_activities_per_closed_opportunity,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Activities Per Closed-Won Opportunity
    value_format: "#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: [activities_open_opportunities, open_opportunities]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed activities per closed-won opportunity created
      in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.opportunity_owner
      Country: sales_activities_engagement.account_country
      Created Date: sales_activities_engagement.opportunity_created_date
      Industry: sales_activities_engagement.account_industry
    row: 6
    col: 12
    width: 6
    height: 2
  - title: Avg Follow Ups Per Sales Rep (on Leads)
    name: Avg Follow Ups Per Sales Rep (on Leads)
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activity_per_lead_owner]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.lead_status: ''
      sales_activities_engagement.is_converted: ''
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_lead_id}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Follow Ups Per Sales Rep on Leads
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed follow-ups per sales representative on
      leads created in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.lead_owner
      Country: sales_activities_engagement.lead_country
      Created Date: sales_activities_engagement.lead_created_date_date
      Industry: sales_activities_engagement.lead_industry
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Avg Follow Up Contact Rate on Converted Leads
    name: Avg Follow Up Contact Rate on Converted Leads
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activities_per_converted_leads]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.is_converted: 'Yes'
      sales_activities_engagement.lead_status: ''
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_lead_id}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Follow Up Contact Rate on Converted  Leads
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed follow ups per Converted Lead created in
      the selected date range
    listen:
      Sales Representative: sales_activities_engagement.lead_owner
      Country: sales_activities_engagement.lead_country
      Created Date: sales_activities_engagement.lead_created_date_date
      Industry: sales_activities_engagement.lead_industry
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Avg Follow Up Contact Rate on Unqualified Leads
    name: Avg Follow Up Contact Rate on Unqualified Leads
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: single_value
    fields: [sales_activities_engagement.activities_per_unqualified_leads]
    filters:
      sales_activities_engagement.status: Completed
      sales_activities_engagement.lead_status: Unqualified
      sales_activities_engagement.is_converted: 'No'
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_lead_id}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Follow Up Contact Rate on Unqualified Leads
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Activities Per Opportunity, orientation: left, series: [{axisId: avg_activities_per_open_opportunity,
            id: avg_activities_per_open_opportunity, name: Avg. Activities per Open
              Opportunity}, {axisId: avg_activities_per_closed_opportunity, id: avg_activities_per_closed_opportunity,
            name: Avg. Activities per Closed Opportunity}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: Activities Per Sales Representative, orientation: right,
        series: [{axisId: avg_activities_per_sales_representative, id: avg_activities_per_sales_representative,
            name: Avg. Activities Per Sales Representative}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      avg_activities_per_sales_representative: "#5b5e55"
      avg_activities_per_open_opportunity: "#16dbd9"
      avg_activities_per_closed_opportunity: "#4cc6fa"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
    x_axis_datetime_label: "%b %y"
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Average number of completed follow ups per Unqualified Lead created
      in the selected date range
    listen:
      Sales Representative: sales_activities_engagement.lead_owner
      Country: sales_activities_engagement.lead_country
      Created Date: sales_activities_engagement.lead_created_date_date
      Industry: sales_activities_engagement.lead_industry
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Activity Trends For Leads
    name: Activity Trends For Leads
    model: cortex_salesforce
    explore: sales_activities_engagement
    type: looker_line
    fields: [sales_activities_engagement.activity_per_lead_owner, sales_activities_engagement.lead_created_date_month,
      sales_activities_engagement.activity_per_lead, sales_activities_engagement.activities_per_converted_leads,
      sales_activities_engagement.activities_per_unqualified_leads]
    fill_fields: [sales_activities_engagement.lead_created_date_month]
    filters:
      sales_activities_engagement.lead_id: "-NULL"
      sales_activities_engagement.status: Completed
      sales_activities_engagement.opportunity_id: 'NULL'
    sorts: [sales_activities_engagement.lead_created_date_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_activities_engagement.count_activity}/${sales_activities_engagement.count_lead_id}",
        label: Avg. Activities per Sales Representative, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: avg_activities_per_sales_representative,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    y_axes: [{label: Lead Follow Up Contact Rate, orientation: left, series: [{axisId: sales_activities_engagement.activity_per_lead,
            id: sales_activities_engagement.activity_per_lead, name: Follow-Up Contact
              Rate per Lead}, {axisId: sales_activities_engagement.activities_per_converted_leads,
            id: sales_activities_engagement.activities_per_converted_leads, name: Follow-up
              Contact Rate per Converted Lead}, {axisId: sales_activities_engagement.activities_per_unqualified_leads,
            id: sales_activities_engagement.activities_per_unqualified_leads, name: Follow-up
              Contact Rate per Disqualified Lead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: Follow-ups
          Per Sales Rep, orientation: right, series: [{axisId: sales_activities_engagement.activity_per_lead_owner,
            id: sales_activities_engagement.activity_per_lead_owner, name: Avg. Follow-ups
              per Sales Representative}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0"
    series_types: {}
    series_colors:
      sales_activities_engagement.activity_per_lead_owner: "#5b5e55"
      sales_activities_engagement.activity_per_lead: "#1A73E8"
      sales_activities_engagement.activities_per_converted_leads: "#45b2e8"
      sales_activities_engagement.activities_per_unqualified_leads: "#79cce8"
    series_labels:
      avg_activities_per_sales_representative: Avg. Activities Per Sales Representative
      avg_activities_per_open_opportunity: Avg. Activities per Open Opportunity
      sales_activities_engagement.activity_per_lead_owner: Avg. Follow-ups per Sales
        Rep
      sales_activities_engagement.activity_per_lead: Follow-Up Contact Rate per Lead
      sales_activities_engagement.activities_per_converted_leads: Follow-up Contact
        Rate per Converted Lead
      sales_activities_engagement.activities_per_unqualified_leads: Follow-up Contact
        Rate per Unqualified Lead
    series_point_styles:
      avg_activities_per_sales_representative: triangle-down
      sales_activities_engagement.activity_per_lead_owner: triangle
    x_axis_datetime_label: "%b %y"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Follow-Ups Per Sales Rep on Leads
    value_format: ''
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Monthly trend of completed follow-ups per sales representative for
      Leads and completed follow-ups per lead, converted lead and disqualified lead
    listen:
      Sales Representative: sales_activities_engagement.lead_owner
      Country: sales_activities_engagement.lead_country
      Created Date: sales_activities_engagement.lead_created_date_date
      Industry: sales_activities_engagement.lead_industry
    row: 8
    col: 0
    width: 12
    height: 5
  - title: Bottom Sales Representatives by Opportunity Value
    name: Bottom Sales Representatives by Opportunity Value
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_bar
    fields: [sales_activities_engagement_opportunity_pipeline.user_full_name, won_opportunities_value,
      completed_activities]
    filters: {}
    sorts: [won_opportunities_value]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: Completed Activities,
        value_format: !!null '', value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_activity,
        _kind_hint: measure, measure: completed_activities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.status: Completed}},
      {category: measure, expression: !!null '', label: Won Opportunities Value, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount,
        _kind_hint: measure, measure: won_opportunities_value, type: sum_distinct,
        _type_hint: number, filters: {sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'Yes',
          sales_activities_engagement_opportunity_pipeline.opportunity_is_won: 'Yes'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: completed_activities,
            id: completed_activities, name: Completed Activities}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: won_opportunities_value,
            id: won_opportunities_value, name: Won Opportunities Value}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Sales Representative
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '10'
    series_types:
      completed_activities: scatter
    series_colors:
      won_opportunities_value: "#1A73E8"
      completed_activities: "#212121"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Sales representatives with the lowest won opportunity value and their
      completed Opportunity Activities
    listen:
      Sales Representative: sales_activities_engagement_opportunity_pipeline.user_full_name
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Industry: sales_activities_engagement_opportunity_pipeline.industry
      Target Currency: sales_activities_engagement_opportunity_pipeline.target_currency
    row: 14
    col: 16
    width: 8
    height: 6
  - title: Top Sales Representative by Opportunity Value
    name: Top Sales Representative by Opportunity Value
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    type: looker_bar
    fields: [sales_activities_engagement_opportunity_pipeline.user_full_name, won_opportunities_value,
      completed_activities]
    filters: {}
    sorts: [won_opportunities_value desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: Completed Activities,
        value_format: !!null '', value_format_name: !!null '', based_on: sales_activities_engagement.count_opportunity_activity,
        _kind_hint: measure, measure: completed_activities, type: count_distinct,
        _type_hint: number, filters: {sales_activities_engagement.status: Completed}},
      {category: measure, expression: !!null '', label: Won Opportunities Value, value_format: !!null '',
        value_format_name: !!null '', based_on: sales_activities_engagement_opportunity_pipeline.sum_of_total_sale_amount,
        _kind_hint: measure, measure: won_opportunities_value, type: sum_distinct,
        _type_hint: number, filters: {sales_activities_engagement_opportunity_pipeline.opportunity_is_closed: 'Yes',
          sales_activities_engagement_opportunity_pipeline.opportunity_is_won: 'Yes'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: completed_activities,
            id: completed_activities, name: Completed Activities}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: won_opportunities_value,
            id: won_opportunities_value, name: Won Opportunities Value}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Sales Representative
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '10'
    series_types:
      completed_activities: scatter
    series_colors:
      won_opportunities_revenue: "#12B5CB"
      completed_activities: "#212121"
      won_opportunities_value: "#7CB342"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Sales representatives with the highest won opportunity value and their
      completed Opportunity Activities
    listen:
      Sales Representative: sales_activities_engagement_opportunity_pipeline.user_full_name
      Country: sales_activities_engagement_opportunity_pipeline.billing_country
      Created Date: sales_activities_engagement_opportunity_pipeline.opportunity_created_date
      Industry: sales_activities_engagement_opportunity_pipeline.industry
      Target Currency: sales_activities_engagement_opportunity_pipeline.target_currency
    row: 14
    col: 8
    width: 8
    height: 6
  filters:
  - name: Created Date
    title: Created Date
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
    field: sales_activities_engagement.created_date_date
  - name: Target Currency
    title: Target Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_salesforce
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: sales_activities_engagement_opportunity_pipeline.target_currency
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
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: account_country.account_country_name
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
    explore: sales_activities_engagement_opportunity_pipeline
    listens_to_filters: []
    field: account_industry.account_industry
  - name: Sales Representative
    title: Sales Representative
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
    field: sales_rep.sales_rep
