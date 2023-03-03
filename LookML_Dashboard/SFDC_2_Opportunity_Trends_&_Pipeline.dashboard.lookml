- dashboard: opportunity_trends__pipeline
  title: Opportunity Trends & Pipeline
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 6YamSxGtgUGbaBuvPiJtdm
  elements:
  - title: Won Opportunities
    name: Won Opportunities
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.count_of_opportunity_id_closed_won, total_opportunities]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: 'Total # Opportunities',
        based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure, measure: total_opportunities,
        type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Won Opportunities
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of opportunities in closed-won status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Lost Opportunities
    name: Lost Opportunities
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.count_of_opportunity_id_closed_lost, opportunity_pipeline.count_of_opportunity_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Lost Opportunities
    comparison_label: 'Total # Opportunities'
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of opportunities in closed-lost status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Open Opportunities
    name: Open Opportunities
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.count_of_opportunity_id_open, total_opportunities]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: 'Total # Opportunities',
        based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure, measure: total_opportunities,
        type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Open Opportunities
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of opportunities in open status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Opportunity Status Trend
    name: Opportunity Status Trend
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_column
    fields: [opportunity_pipeline.opportunity_created_month, opportunity_pipeline.count_of_opportunity_id_closed_won,
      opportunity_pipeline.count_of_opportunity_id_closed_lost, opportunity_pipeline.count_of_opportunity_id_open]
    fill_fields: [opportunity_pipeline.opportunity_created_month]
    sorts: [opportunity_pipeline.opportunity_created_month desc]
    limit: 5000
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: f1f040d7-574d-a066-380a-5b3d8fc291c1
        label: Custom
        type: continuous
        stops:
        - color: "#c2d8ff"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Total Opportunities, orientation: left, series: [{axisId: closed_won,
            id: closed_won, name: Closed - Won}, {axisId: closed_lost, id: closed_lost,
            name: Closed - Lost}, {axisId: open_opportunities, id: open_opportunities,
            name: Open Opportunities}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_types: {}
    series_colors: {}
    series_labels:
      opportunity_pipeline.count_of_opportunity_id_closed_won: Closed - Won
      opportunity_pipeline.count_of_opportunity_id_closed_lost: Closed - Lost
      opportunity_pipeline.count_of_opportunity_id_open: Open Opportunities
    label_color: ["#80868B"]
    x_axis_datetime_label: "%b %y"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Opportunities Open
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Opportunity count trends for different status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 8
    col: 0
    width: 12
    height: 5
  - title: Open Opportunities by Industries
    name: Open Opportunities by Industries
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_pie
    fields: [opportunity_pipeline.industry, total_of_opportunities]
    sorts: [total_of_opportunities desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: '', label: 'Total # of Opportunities',
        based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure, measure: total_of_opportunities,
        type: count_distinct, _type_hint: number, filters: {opportunity_pipeline.opportunity_is_closed: 'No'}}]
    value_labels: legend
    label_type: labPer
    inner_radius: 60
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: All open opportunities by industries.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 14
    col: 16
    width: 8
    height: 5
  - title: Opportunity to Win Ratio by Sales Representative
    name: Opportunity to Win Ratio by Sales Representative
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_pie
    fields: [total_of_opportunities_closed, total_of_opportunities_closed_won, opportunity_pipeline.opportunity_owner_name]
    sorts: [win_perceentage desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${total_of_opportunities_closed_won}/${total_of_opportunities_closed})*100",
        label: Win Perceentage, value_format: 0.00 "%", value_format_name: __custom,
        _kind_hint: measure, table_calculation: win_perceentage, _type_hint: number},
      {category: measure, expression: '', label: 'Total # of Opportunities (Closed)',
        based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure, measure: total_of_opportunities_closed,
        type: count_distinct, _type_hint: number, filters: {opportunity_pipeline.opportunity_is_closed: 'Yes'}},
      {category: measure, expression: '', label: 'Total # of Opportunities (Closed
          - Won)', based_on: opportunity_pipeline.opportunity_id, _kind_hint: measure,
        measure: total_of_opportunities_closed_won, type: count_distinct, _type_hint: number,
        filters: {opportunity_pipeline.opportunity_is_won: 'Yes', opportunity_pipeline.opportunity_is_closed: 'Yes'}}]
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [total_of_opportunities_1, total_of_opportunities_won, total_of_opportunities_closed_won,
      total_of_opportunities_closed]
    series_types: {}
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: 'Sales reps. probably to close win opportunities vs total opportunities. '
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 20
    col: 0
    width: 12
    height: 5
  - title: Top Open Opportunities by Value
    name: Top Open Opportunities by Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_bar
    fields: [opportunity_pipeline.opportunity_id, opportunity_pipeline.opportunity_name,
      opportunity_pipeline.sum_of_total_sale_amount]
    filters:
      opportunity_pipeline.opportunity_is_won: 'No'
      opportunity_pipeline.opportunity_is_closed: 'No'
    sorts: [opportunity_pipeline.sum_of_total_sale_amount desc 0]
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunity_pipeline.sum_of_total_sale_amount_conv,
            id: opportunity_pipeline.sum_of_total_sale_amount_conv, name: Opportunity
              Value}], showLabels: false, showValues: true, minValue: 0, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 20, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_value_format: 0.00,, "M"
    series_types: {}
    series_colors:
      opportunity_pipeline.sum_of_total_sale_amount_conv: "#7CB342"
      opportunity_pipeline_new.sum_of_total_sale_amount: "#7CB342"
      opportunity_pipeline.sum_of_total_sale_amount: "#7CB342"
    series_labels:
      opportunity_pipeline.sum_of_total_sale_amount_conv: Opportunity Value
      opportunity_pipeline_new.sum_of_total_sale_amount: Opportunity Value
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    defaults_version: 1
    hidden_fields: [opportunity_pipeline.opportunity_id]
    note_state: collapsed
    note_display: hover
    note_text: Top 10 open opportunities with high value.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 14
    col: 0
    width: 8
    height: 5
  - name: Opportunity Trends & Pipeline
    type: text
    title_text: Opportunity Trends & Pipeline
    subtitle_text: <font color="#c1c1c1">What is our overall opportunity pipeline
      positioning?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Where are our open opportunities and how
      are we tracking to close?</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">How is the team trending for converting open
      opportunities to new wins?</font>
    body_text: ''
    row: 19
    col: 0
    width: 24
    height: 1
  - title: Total Opportunities
    name: Total Opportunities
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.count_of_opportunity_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of opportunities.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Navigation Bar
    name: Navigation Bar
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.dash_nav]
    limit: 500
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
  - title: Total Opportunity Value
    name: Total Opportunity Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.sum_of_total_sale_amount]
    filters: {}
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
    single_value_title: Total Opportunity Value
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Sum of value/amount of all opportunities.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 6
    col: 0
    width: 6
    height: 2
  - title: Open Opportunity Value
    name: Open Opportunity Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.sum_of_total_sale_amount_open, opportunity_pipeline.sum_of_total_sale_amount]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Open Opportunity Value
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Sum of value/amount of all opportunities in open status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 6
    col: 6
    width: 6
    height: 2
  - title: Won Opportunity Value
    name: Won Opportunity Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.sum_of_total_sale_amount_closed_won, opportunity_pipeline.sum_of_total_sale_amount]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Won Opportunity Value
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The total value/amount generated from won opportunities. '
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 6
    col: 12
    width: 6
    height: 2
  - title: Lost Opportunity Value
    name: Lost Opportunity Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: single_value
    fields: [opportunity_pipeline.sum_of_total_sale_amount_closed_lost, opportunity_pipeline.sum_of_total_sale_amount]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Lost Opportunity Value
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Sum of value/amount of all opportunities in closed-lost status.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 6
    col: 18
    width: 6
    height: 2
  - title: Top Sales Representative by Value
    name: Top Sales Representative by Value
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_bar
    fields: [won_opportunities_value, opportunity_pipeline.opportunity_owner_name]
    filters: {}
    sorts: [won_opportunities_value desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: measure, label: Won Opportunities Value, based_on: opportunity_pipeline.sum_of_total_sale_amount,
        _kind_hint: measure, measure: won_opportunities_value, type: sum, _type_hint: number,
        filters: {opportunity_pipeline.opportunity_is_closed: 'Yes', opportunity_pipeline.opportunity_is_won: 'Yes'}}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunities_value_won,
            id: opportunities_value_won, name: Opportunities Value (Won)}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Opportunity Owner
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      actual_value: "#1A73E8"
      opportunity_pipeline.sum_of_actual_amount_conv: "#b9d1ff"
      opportunity_pipeline.sum_of_total_sale_amount_conv: "#1A73E8"
    series_labels:
      opportunity_pipeline.sum_of_actual_amount_conv: Target Value
      opportunity_pipeline.sum_of_total_sale_amount_conv: Actual Value
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Top ten sales reps with the highest generated amount/ value.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 20
    col: 12
    width: 12
    height: 5
  - title: Opportunity Status Value Trend
    name: Opportunity Status Value Trend
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_column
    fields: [opportunity_pipeline.opportunity_created_month, opportunity_pipeline.sum_of_total_sale_amount,
      opportunity_pipeline.sum_of_total_sale_amount_closed_won, opportunity_pipeline.sum_of_total_sale_amount_open,
      opportunity_pipeline.sum_of_total_sale_amount_closed_lost]
    fill_fields: [opportunity_pipeline.opportunity_created_month]
    filters: {}
    sorts: [opportunity_pipeline.opportunity_created_month desc]
    limit: 500
    column_limit: 50
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Opportunity Value, orientation: left, series: [{axisId: opportunity_pipeline.sum_of_total_sale_amount,
            id: opportunity_pipeline.sum_of_total_sale_amount, name: Total Value},
          {axisId: opportunity_pipeline.sum_of_total_sale_amount_closed_won, id: opportunity_pipeline.sum_of_total_sale_amount_closed_won,
            name: Total Value Closed (Won)}, {axisId: opportunity_pipeline.sum_of_total_sale_amount_open,
            id: opportunity_pipeline.sum_of_total_sale_amount_open, name: Total Value
              Open}, {axisId: opportunity_pipeline.sum_of_total_sale_amount_closed_lost,
            id: opportunity_pipeline.sum_of_total_sale_amount_closed_lost, name: Total
              Value Closed (Lost)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_types:
      total_value_closed_won: line
      total_value_open: line
      total_value_closed_lost: line
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_won: line
      opportunity_pipeline.sum_of_total_sale_amount_conv_open: line
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_lost: line
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_won: line
      opportunity_pipeline_new.sum_of_total_sale_amount_open: line
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_lost: line
      opportunity_pipeline.sum_of_total_sale_amount_open: line
      opportunity_pipeline.sum_of_total_sale_amount_closed_lost: line
      opportunity_pipeline.sum_of_total_sale_amount_closed_won: line
    series_colors:
      total_value_open: "#F9AB00"
      total_value_closed_lost: "#E52592"
      opportunity_pipeline.sum_of_total_sale_amount_conv: "#1A73E8"
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_won: "#12B5CB"
      opportunity_pipeline.sum_of_total_sale_amount_conv_open: "#F9AB00"
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_lost: "#E52592"
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_lost: "#E52592"
      opportunity_pipeline_new.sum_of_total_sale_amount_open: "#F9AB00"
      opportunity_pipeline.sum_of_total_sale_amount_open: "#F9AB00"
      opportunity_pipeline.sum_of_total_sale_amount_closed_lost: "#E52592"
    series_labels:
      total_value_open: Total Value (Open)
      opportunity_pipeline.sum_of_total_sale_amount_conv: Total Value
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_won: Total Value Closed
        (Won)
      opportunity_pipeline.sum_of_total_sale_amount_conv_open: Total Value Open
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_lost: Total Value
        Closed (Lost)
      opportunity_pipeline.sum_of_total_sale_amount: Total Value
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_won: Total Value Closed
        (Won)
      opportunity_pipeline_new.sum_of_total_sale_amount_open: Total Value Open
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_lost: Total Value Closed
        (Lost)
      opportunity_pipeline.sum_of_total_sale_amount_closed_won: Total Value Closed
        (Won)
      opportunity_pipeline.sum_of_total_sale_amount_open: Total Value Open
      opportunity_pipeline.sum_of_total_sale_amount_closed_lost: Total Value Closed
        (Lost)
    series_point_styles:
      total_value: square
      total_value_closed_won: diamond
      total_value_closed_lost: triangle-down
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_won: diamond
      opportunity_pipeline_new.sum_of_total_sale_amount_closed_lost: triangle-down
      opportunity_pipeline_new.sum_of_total_sale_amount_conv_closed_won: diamond
      opportunity_pipeline_new.sum_of_total_sale_amount_conv_closed_lost: triangle-down
    label_color: ["#80868B"]
    x_axis_datetime_label: "%b %y"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Opportunities Open
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Opportunity value trends for different status.
    listen:
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Target Currency: opportunity_pipeline.target_currency
    row: 8
    col: 12
    width: 12
    height: 5
  - title: Open Opportunities with Probability to Close ( >50%)
    name: Open Opportunities with Probability to Close ( >50%)
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_column
    fields: [opportunity_pipeline.probability, opportunity_pipeline.count_of_opportunity_id_open,
      opportunity_pipeline.sum_of_total_sale_amount]
    filters:
      opportunity_pipeline.probability: ">50"
      opportunity_pipeline.opportunity_is_closed: 'No'
    sorts: [opportunity_pipeline.probability]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: opportunity_pipeline.count_of_opportunity_id_open,
            id: opportunity_pipeline.count_of_opportunity_id_open, name: Open Opportunities}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: right, series: [{axisId: opportunity_pipeline.sum_of_total_sale_amount,
            id: opportunity_pipeline.sum_of_total_sale_amount, name: Opportunity Value
              (Open)}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_types:
      opportunity_pipeline.sum_of_total_sale_amount_conv: line
      opportunity_pipeline_new.sum_of_total_sale_amount: line
      opportunity_pipeline.sum_of_total_sale_amount: line
    series_colors:
      opportunity_pipeline.sum_of_total_sale_amount_conv: "#000000"
      opportunity_pipeline_new.sum_of_total_sale_amount: "#000000"
      opportunity_pipeline.sum_of_total_sale_amount: "#000000"
    series_labels:
      count_of_opportunity_id_2: Open Opportunities
      opportunity_pipeline.count_of_opportunity_id_open: Open Opportunities
      opportunity_pipeline.sum_of_total_sale_amount_conv: Opportunity Value (Open)
      opportunity_pipeline_new.sum_of_total_sale_amount: Opportunity Value (Open)
      opportunity_pipeline.sum_of_total_sale_amount: Opportunity Value (Open)
    series_point_styles:
      opportunity_pipeline_new.sum_of_total_sale_amount: diamond
      opportunity_pipeline_new.sum_of_total_sale_amount_conv: diamond
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Opportunities with the highest probability of closing.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 14
    col: 8
    width: 8
    height: 5
  - title: Accounts with Opportunities
    name: Accounts with Opportunities
    model: cortex_salesforce
    explore: opportunity_pipeline
    type: looker_grid
    fields: [opportunity_pipeline.account_name, opportunity_pipeline.opportunity_owner_name,
      opportunity_pipeline.count_of_opportunity_id, opportunity_pipeline.sum_of_total_sale_amount,
      opportunity_pipeline.count_of_opportunity_id_closed_won, opportunity_pipeline.sum_of_total_sale_amount_closed_won,
      opportunity_pipeline.count_of_opportunity_id_closed_lost, opportunity_pipeline.sum_of_total_sale_amount_closed_lost,
      opportunity_pipeline.count_of_opportunity_id_open, opportunity_pipeline.sum_of_total_sale_amount_open]
    filters: {}
    sorts: [opportunity_pipeline.count_of_opportunity_id desc, opportunity_pipeline.sum_of_total_sale_amount_open
        desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${opportunity_pipeline.count_of_opportunity_id_closed_won}/(${opportunity_pipeline.count_of_opportunity_id_closed_won}+${opportunity_pipeline.count_of_opportunity_id_closed_lost}))*100",
        label: Opportunity Win Percentage, value_format: 0.00 "%", value_format_name: __custom,
        _kind_hint: measure, table_calculation: opportunity_win_percentage, _type_hint: number}]
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
      opportunity_pipeline.count_of_opportunity_id: Total Opportunities
      opportunity_pipeline.sum_of_total_sale_amount_conv: Total Opportunity Value
      opportunity_pipeline.count_of_opportunity_id_closed_won: Opportunities Closed
        (Won)
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_won: Opportunity Value
        Closed (Won)
      opportunity_pipeline.count_of_opportunity_id_closed_lost: Opportunities Closed
        (Lost)
      opportunity_pipeline.sum_of_total_sale_amount_conv_closed_lost: Opportunity
        Value Closed (Lost)
      opportunity_pipeline.count_of_opportunity_id_open: Opportunities Open
      opportunity_pipeline.sum_of_total_sale_amount_conv_open: Opportunity Value (Open)
      opportunity_pipeline.opportunity_owner_name: Opportunity Owner
      opportunity_pipeline.sum_of_total_sale_amount: Total Opportunity Value
      opportunity_pipeline.sum_of_total_sale_amount_closed_won: Opportunity Value
        Closed (Won)
      opportunity_pipeline.sum_of_total_sale_amount_closed_lost: Opportunity Value
        Closed (Lost)
      opportunity_pipeline.sum_of_total_sale_amount_open: Opportunity Value (Open)
    series_cell_visualizations:
      opportunity_pipeline_new.count_of_opportunity_id:
        is_active: true
      opportunity_pipeline_new.sum_of_total_sale_amount_conv:
        is_active: false
      opportunity_pipeline_new.sum_of_total_sale_amount_conv_closed_won:
        is_active: false
      opportunity_pipeline_new.sum_of_total_sale_amount_conv_closed_lost:
        is_active: false
      opportunity_pipeline_new.sum_of_total_sale_amount_conv_open:
        is_active: false
      opportunity_pipeline_new.count_of_opportunity_id_closed_won:
        is_active: true
      opportunity_pipeline_new.count_of_opportunity_id_open:
        is_active: true
      opportunity_pipeline_new.count_of_opportunity_id_closed_lost:
        is_active: true
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Accounts that have more than one opportunity.
    listen:
      Opportunity Created Date: opportunity_pipeline.opportunity_created_date
      Opportunity Closed Date: opportunity_pipeline.opportunity_closed_date
      Country: opportunity_pipeline.billing_country
      Industry: opportunity_pipeline.industry
      Opportunity Owner: opportunity_pipeline.opportunity_owner_name
      Target Currency: opportunity_pipeline.target_currency
    row: 25
    col: 0
    width: 24
    height: 6
  filters:
  - name: Opportunity Created Date
    title: Opportunity Created Date
    type: field_filter
    default_value: this year to second
    allow_multiple_values: false
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
      display: inline
    model: cortex_salesforce
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.target_currency
  - name: Opportunity Closed Date
    title: Opportunity Closed Date
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cortex_salesforce
    explore: opportunity_pipeline
    listens_to_filters: []
    field: opportunity_pipeline.opportunity_closed_date
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
