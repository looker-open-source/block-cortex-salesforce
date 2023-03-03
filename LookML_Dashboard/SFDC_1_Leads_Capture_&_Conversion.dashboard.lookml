- dashboard: leads_capture__conversion
  title: Leads Capture & Conversion
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Z79tnP7LSz5BhkYRQ2hW1a
  elements:
  - title: Dash Navigation Tile
    name: Dash Navigation Tile
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: single_value
    fields: [leads_capture_conversion.dash_nav]
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
  - title: 'Total # of Leads Created'
    name: 'Total # of Leads Created'
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: single_value
    fields: [leads_capture_conversion.count_of_lead_Id]
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
    single_value_title: Leads Created
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: 'The total number of inbound leads. '
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 4
    col: 0
    width: 6
    height: 2
  - title: 'Total # of Leads Converted'
    name: 'Total # of Leads Converted'
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: single_value
    fields: [leads_capture_conversion.count_of_lead_Id_converted, leads_capture_conversion.count_of_lead_Id]
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
    single_value_title: Leads Converted
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of converted leads within the selected date range.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 4
    col: 6
    width: 6
    height: 2
  - name: Leads Capture & Conversion
    type: text
    title_text: Leads Capture & Conversion
    subtitle_text: <font color="#c1c1c1">What is our overall lead capture and conversion
      positioning?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Where are our leads coming from and how are
      we trending across source and status?</font>
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 1
  - title: Lead Source Trend
    name: Lead Source Trend
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_column
    fields: [leads_capture_conversion.lead_created_month, count_of_leads_created,
      leads_capture_conversion.lead_source]
    pivots: [leads_capture_conversion.lead_source]
    fill_fields: [leads_capture_conversion.lead_created_month]
    sorts: [leads_capture_conversion.lead_source, leads_capture_conversion.lead_created_month
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: '', label: Count of Leads Created,
        based_on: leads_capture_conversion.lead_id, _kind_hint: measure, measure: count_of_leads_created,
        type: count_distinct, _type_hint: number}]
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
    legend_position: right
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
        id: d41cc036-8ee1-0e54-88a0-8fa4be772170
        label: Custom
        type: continuous
        stops:
        - color: "#d0e9ff"
          offset: 0
        - color: "#99b9e8"
          offset: 25
        - color: "#789eff"
          offset: 50
        - color: "#396fff"
          offset: 75
        - color: "#10a4ff"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Total Leads, orientation: left, series: [{axisId: Advertisement
              - count_of_leads_created, id: Advertisement - count_of_leads_created,
            name: Advertisement}, {axisId: Employee Referral - count_of_leads_created,
            id: Employee Referral - count_of_leads_created, name: Employee Referral},
          {axisId: External Referral - count_of_leads_created, id: External Referral
              - count_of_leads_created, name: External Referral}, {axisId: Other -
              count_of_leads_created, id: Other - count_of_leads_created, name: Other},
          {axisId: Partner - count_of_leads_created, id: Partner - count_of_leads_created,
            name: Partner}, {axisId: Partner Referral - count_of_leads_created, id: Partner
              Referral - count_of_leads_created, name: Partner Referral}, {axisId: Phone
              Inquiry - count_of_leads_created, id: Phone Inquiry - count_of_leads_created,
            name: Phone Inquiry}, {axisId: Public Relations - count_of_leads_created,
            id: Public Relations - count_of_leads_created, name: Public Relations},
          {axisId: Purchased List - count_of_leads_created, id: Purchased List - count_of_leads_created,
            name: Purchased List}, {axisId: Seminar - Internal - count_of_leads_created,
            id: Seminar - Internal - count_of_leads_created, name: Seminar - Internal},
          {axisId: Seminar - Partner - count_of_leads_created, id: Seminar - Partner
              - count_of_leads_created, name: Seminar - Partner}, {axisId: Trade Show
              - count_of_leads_created, id: Trade Show - count_of_leads_created, name: Trade
              Show}, {axisId: Web - count_of_leads_created, id: Web - count_of_leads_created,
            name: Web}, {axisId: Word of mouth - count_of_leads_created, id: Word
              of mouth - count_of_leads_created, name: Word of mouth}, {axisId: leads_capture_conversion.lead_source___null
              - count_of_leads_created, id: leads_capture_conversion.lead_source___null
              - count_of_leads_created, name: "∅"}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_colors: {}
    label_color: ["#80868B"]
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: All leads by lead source
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 7
    col: 8
    width: 8
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">How is the team performing for lead conversion
      and response time?</font>
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 1
  - title: Leads by Industry
    name: Leads by Industry
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_pie
    fields: [leads_capture_conversion.lead_industry, total_of_leads]
    sorts: [total_of_leads desc, leads_capture_conversion.lead_industry desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: measure, expression: '', label: 'Total # of Leads',
        based_on: leads_capture_conversion.lead_id, _kind_hint: measure, measure: total_of_leads,
        type: count_distinct, _type_hint: number}]
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
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: All leads by industry
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 7
    col: 0
    width: 8
    height: 5
  - title: Lead Conversion Trends
    name: Lead Conversion Trends
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_line
    fields: [leads_capture_conversion.lead_created_month, leads_capture_conversion.count_of_lead_Id_converted,
      count_of_lead_id_2]
    fill_fields: [leads_capture_conversion.lead_created_month]
    sorts: [leads_capture_conversion.lead_created_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${leads_capture_conversion.count_of_lead_Id_converted}/${count_of_lead_id_2}*100",
        label: Percentage of Leads Converted, value_format: 0.00 "%", value_format_name: __custom,
        _kind_hint: measure, table_calculation: percentage_of_leads_converted, _type_hint: number},
      {measure: count_of_lead_id_2, based_on: leads_capture_conversion.lead_id, expression: '',
        label: Count of Lead ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Total Leads Converted, orientation: left, series: [{axisId: leads_capture_conversion.count_of_lead_Id_converted,
            id: leads_capture_conversion.count_of_lead_Id_converted, name: Leads Converted}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: Conversion Rate, orientation: right, series: [{axisId: percentage_of_leads_converted,
            id: percentage_of_leads_converted, name: Lead Conversion Rate}], showLabels: true,
        showValues: true, maxValue: 100, minValue: 0, valueFormat: 0 "%", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_types:
      count_of_converted_lead_id: area
      leads_capture_conversion.count_of_lead_Id_converted: area
    series_colors:
      percentage_of_leads_converted: "#000000"
      leads_capture_conversion.count_of_lead_Id_converted: "#7CB342"
    series_labels:
      count_of_converted_lead_id: Leads Converted
      percentage_of_leads_converted: Lead Conversion Rate
      leads_capture_conversion.count_of_lead_Id_converted: Leads Converted
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: [count_of_lead_id_2]
    note_state: collapsed
    note_display: hover
    note_text: Number and percentage of converted leads over time.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 13
    col: 0
    width: 8
    height: 6
  - title: Top Lead Owners by Converted Leads
    name: Top Lead Owners by Converted Leads
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_bar
    fields: [leads_capture_conversion.lead_owner, leads_capture_conversion.lead_owner_name,
      leads_converted, leads_created]
    sorts: [leads_converted desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${leads_converted}/${leads_created})\
          \ * 100", label: Lead Conversion Rate, value_format: 0.00 "%", value_format_name: __custom,
        _kind_hint: measure, table_calculation: lead_conversion_rate, _type_hint: number},
      {category: measure, expression: '', label: Leads Converted, based_on: leads_capture_conversion.lead_id,
        _kind_hint: measure, measure: leads_converted, type: count_distinct, _type_hint: number,
        filters: {leads_capture_conversion.is_converted: 'Yes'}}, {category: measure,
        expression: !!null '', label: Leads Created, value_format: !!null '', value_format_name: !!null '',
        based_on: leads_capture_conversion.lead_id, _kind_hint: measure, measure: leads_created,
        type: count_distinct, _type_hint: number}]
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
    show_value_labels: true
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
    y_axes: [{label: Conversion Rate, orientation: top, series: [{axisId: lead_conversion_rate,
            id: lead_conversion_rate, name: Lead Conversion Rate}], showLabels: false,
        showValues: false, maxValue: 100, minValue: 0, valueFormat: 0 "%", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: Total Leads
          Converted, orientation: bottom, series: [{axisId: leads_converted, id: leads_converted,
            name: Leads Converted}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Lead Owner
    font_size: '10'
    series_types:
      lead_conversion_rate: line
    series_colors:
      leads_converted: "#7CB342"
      lead_conversion_rate: "#212121"
    series_point_styles:
      lead_conversion_rate: diamond
    label_color: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [leads_created, leads_capture_conversion.lead_owner]
    note_state: collapsed
    note_display: hover
    note_text: Top 10 Sales Reps. with the highest number of converted leads and their
      conversion rate.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 13
    col: 16
    width: 8
    height: 6
  - title: Lead Response Time
    name: Lead Response Time
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_grid
    fields: [leads_capture_conversion.lead_owner, leads_capture_conversion.lead_owner_name,
      total_of_leads, total_of_leads_converted, avg_lead_response_time_hours]
    sorts: [avg_lead_response_time_hours desc, lead_conversion_rate desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${total_of_leads_converted}/${total_of_leads})*100",
        label: 'Lead Conversion Rate ', value_format: 0.00 "%", value_format_name: __custom,
        _kind_hint: measure, table_calculation: lead_conversion_rate, _type_hint: number},
      {category: dimension, expression: 'diff_hours(${leads_capture_conversion.lead_created_time},${leads_capture_conversion.lead_first_response_time})',
        label: Lead Response Time (hours), value_format: !!null '', value_format_name: !!null '',
        dimension: lead_response_time_hours, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: '', label: Avg. Lead Response Time (hours),
        value_format: 0.0 "Hrs.", value_format_name: __custom, based_on: lead_response_time_hours,
        _kind_hint: measure, measure: avg_lead_response_time_hours, type: average,
        _type_hint: number}, {category: measure, expression: '', label: 'Total # of
          Leads', based_on: leads_capture_conversion.lead_id, _kind_hint: measure,
        measure: total_of_leads, type: count_distinct, _type_hint: number}, {category: measure,
        expression: '', label: 'Total # of Leads Converted', based_on: leads_capture_conversion.lead_id,
        _kind_hint: measure, measure: total_of_leads_converted, type: count_distinct,
        _type_hint: number, filters: {leads_capture_conversion.is_converted: 'Yes'}}]
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
      leads_capture_conversion.user_full_name: Lead Owner
      avg_lead_response_time_hours: Avg. Response Time
      leads_capture_conversion.lead_owner_name: Lead Owner
    series_cell_visualizations:
      avg_lead_response_time_hours:
        is_active: true
        palette:
          palette_id: b12535f1-ede8-8464-cab5-652cb033432e
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#1a73e8"
          - "#E52592"
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: 'Total # of Leads - Converted', orientation: left, series: [
          {axisId: leads_converted, id: leads_converted, name: Leads Converted}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: Conversion Rate, orientation: right,
        series: [{axisId: lead_conversion_rate, id: lead_conversion_rate, name: Lead
              Conversion Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Lead Owner
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      lead_conversion_rate: "#80868B"
      leads_converted: "#12B5CB"
    series_point_styles:
      lead_conversion_rate: diamond
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [total_of_leads, total_of_leads_converted, leads_capture_conversion.lead_owner]
    note_state: collapsed
    note_display: hover
    note_text: "Average time taken by each lead owner to respond to their leads after\
      \ creation. \n\nRate of leads converted to opportunity by each lead owner."
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 13
    col: 8
    width: 8
    height: 6
  - title: Opportunities from Converted Leads
    name: Opportunities from Converted Leads
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: single_value
    fields: [leads_capture_conversion.count_of_opportunity_id, leads_capture_conversion.count_of_lead_Id_converted]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Total Opportunities,
        based_on: leads_capture_conversion.opportunity_id, _kind_hint: measure, measure: total_opportunities,
        type: count_distinct, _type_hint: number}, {measure: count_of_lead_first_name,
        based_on: leads_capture_conversion.lead_first_name, expression: '', label: Count
          of Lead First Name, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {category: measure, expression: '', label: Total Leads, based_on: leads_capture_conversion.lead_id,
        _kind_hint: measure, measure: total_leads, type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Opportunities from Converted Leads
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
    note_text: Total number of opportunities which have been converted from the leads
      converted.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Total Value of Leads Converted to Opportunities
    name: Total Value of Leads Converted to Opportunities
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: single_value
    fields: [leads_capture_conversion.Sum_of_Total_sale_amount]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [leads_capture_conversion.Sum_of_Total_sale_amount], calculation_type: percent_of_previous,
        category: table_calculation, based_on: leads_capture_conversion.Sum_of_Total_sale_amount,
        label: Percent of previous - Leads Capture Conversion Sum of Total Sale Amount,
        source_field: leads_capture_conversion.Sum_of_Total_sale_amount, table_calculation: percent_of_previous_leads_capture_conversion_sum_of_total_sale_amount,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: measure, label: Filtered
          leads_capture_conversion.Sum_of_Total_sale_amount, based_on: leads_capture_conversion.Sum_of_Total_sale_amount,
        _kind_hint: measure, measure: filtered_leads_capture_conversionsum_of_total_sale_amount,
        type: count_distinct, _type_hint: number, filters: {}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Value of Opportunities from Converted Leads
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Total opportunity value/ amount of converted leads.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Lead Status Trend
    name: Lead Status Trend
    model: cortex_salesforce
    explore: leads_capture_conversion
    type: looker_column
    fields: [leads_capture_conversion.lead_created_month, leads_capture_conversion.count_of_lead_Id_status_new,
      leads_capture_conversion.count_of_lead_Id_status_contacted, leads_capture_conversion.count_of_lead_Id_status_nurturing,
      leads_capture_conversion.count_of_lead_Id_status_qualified, leads_capture_conversion.count_of_lead_Id_status_unqualified]
    fill_fields: [leads_capture_conversion.lead_created_month]
    sorts: [leads_capture_conversion.lead_created_month desc]
    limit: 500
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
    legend_position: right
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
        id: a510af5b-baab-8d68-a5ec-95743871c84e
        label: Custom
        type: continuous
        stops:
        - color: "#c7e2ff"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Total Leads, orientation: left, series: [{axisId: leads_capture_conversion.count_of_lead_Id_status_new,
            id: leads_capture_conversion.count_of_lead_Id_status_new, name: New},
          {axisId: leads_capture_conversion.count_of_lead_Id_status_contacted, id: leads_capture_conversion.count_of_lead_Id_status_contacted,
            name: Contacted}, {axisId: leads_capture_conversion.count_of_lead_Id_status_nurturing,
            id: leads_capture_conversion.count_of_lead_Id_status_nurturing, name: Nurturing},
          {axisId: leads_capture_conversion.count_of_lead_Id_status_qualified, id: leads_capture_conversion.count_of_lead_Id_status_qualified,
            name: Qualified}, {axisId: leads_capture_conversion.count_of_lead_Id_status_disqualified,
            id: leads_capture_conversion.count_of_lead_Id_status_disqualified, name: Disqualified}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_types: {}
    series_colors: {}
    series_labels:
      leads_capture_conversion.count_of_lead_Id_status_new: New
      leads_capture_conversion.count_of_lead_Id_status_contacted: Contacted
      leads_capture_conversion.count_of_lead_Id_status_nurturing: Nurturing
      leads_capture_conversion.count_of_lead_Id_status_qualified: Qualified
      leads_capture_conversion.count_of_lead_Id_status_disqualified: Disqualified
      leads_capture_conversion.count_of_lead_Id_status_unqualified: Unqualified
    x_axis_datetime_label: "%b %y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    hidden_series: []
    note_state: collapsed
    note_display: hover
    note_text: All leads by lead status.
    listen:
      Lead Created Date: leads_capture_conversion.lead_created_date
      Country: leads_capture_conversion.lead_country
      Industry: leads_capture_conversion.lead_industry
      Lead Source: leads_capture_conversion.lead_source
      Lead Owner: leads_capture_conversion.lead_owner_name
      Target Currency: leads_capture_conversion.target_currency
    row: 7
    col: 16
    width: 8
    height: 5
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
      display: inline
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
