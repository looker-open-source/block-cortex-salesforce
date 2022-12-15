- dashboard: case_overview__trends
  title: Case Overview & Trends
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Q1m3Aui6yf70fsgq843si8
  elements:
  - title: Total Cases Created
    name: Total Cases Created
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [case_management.count_caseId]
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
    single_value_title: Cases Created
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of cases created within the selected date range
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Total Open Cases
    name: Total Open Cases
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [open_cases, case_management.count_caseId]
    sorts: [percent_of_open_cases]
    limit: 500
    dynamic_fields: [{category: measure, label: Open Cases, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: open_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.case_is_closed: 'No,'}}, {category: table_calculation,
        expression: "${open_cases}/${case_management.count_caseId}", label: Percent
          of Open Cases, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: percent_of_open_cases, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    single_value_title: Open Cases
    comparison_label: of all Cases
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [percent_of_open_cases]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of open cases
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 6
    width: 6
    height: 2
  - title: High Priority Open Cases
    name: High Priority Open Cases
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [high_priority_open_cases, case_management.count_caseId]
    filters:
      case_management.case_is_closed: 'No'
    limit: 500
    dynamic_fields: [{category: measure, label: High Priority Open Cases, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: high_priority_open_cases, type: count_distinct,
        _type_hint: number, filters: {case_management.priority: High}}, {category: table_calculation,
        expression: "${high_priority_open_cases}/${case_management.count_caseId}",
        label: High Priority Open Cases Percent, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: high_priority_open_cases_percent,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of all Open Cases
    series_types: {}
    defaults_version: 1
    hidden_fields: [high_priority_open_cases_percent]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of open high priority cases
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Open Cases by Priority
    name: Open Cases by Priority
    model: cortex_salesforce
    explore: case_management
    type: looker_column
    fields: [case_management.case_created_month, low_priority, medium_priority, high_priority]
    fill_fields: [case_management.case_created_month]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [case_management.case_created_month desc]
    limit: 500
    dynamic_fields: [{category: measure, label: High Priority, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: high_priority, type: count_distinct, _type_hint: number,
        filters: {case_management.priority: High}}, {category: measure, label: Medium
          Priority, based_on: case_management.count_caseId, _kind_hint: measure, measure: medium_priority,
        type: count_distinct, _type_hint: number, filters: {case_management.priority: Medium}},
      {category: measure, label: Low Priority, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: low_priority, type: count_distinct, _type_hint: number,
        filters: {case_management.priority: Low}}]
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
        id: 38e092e6-2380-34ef-7a0f-c4c2ad08afe9
        label: Custom
        type: discrete
        colors:
        - "#f6ffaf"
        - "#FFBF00"
        - "#FFBF00"
      options:
        steps: 5
    y_axes: [{label: Open Cases, orientation: left, series: [{axisId: high_priority_open_cases,
            id: high_priority_open_cases, name: High Priority Open Cases}, {axisId: medium_priority,
            id: medium_priority, name: Medium Priority}, {axisId: low_priority, id: low_priority,
            name: Low Priority}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    hide_legend: false
    font_size: '10'
    series_types: {}
    series_colors:
      low_priority: "#FFFEC7"
      medium_priority: "#FFDF64"
      high_priority: "#FFBF00"
    label_color: ["#80868B"]
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Trend of open cases by priority
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 7
    col: 16
    width: 8
    height: 5
  - title: Open Cases by Type
    name: Open Cases by Type
    model: cortex_salesforce
    explore: case_management
    type: looker_pie
    fields: [case_management.case_type, open_cases]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [open_cases desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Open Cases,
        value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: open_cases, type: count_distinct, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    inner_radius: 65
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      'null': Unknown
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: All open cases by type
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 7
    col: 8
    width: 8
    height: 5
  - title: Cases by Channel Trend
    name: Cases by Channel Trend
    model: cortex_salesforce
    explore: case_management
    type: looker_area
    fields: [case_management.case_created_month, case_management.case_origin, case_management.count_caseId]
    pivots: [case_management.case_origin]
    fill_fields: [case_management.case_created_month]
    sorts: [case_management.case_origin, case_management.case_created_month desc]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: '0951a7b7-4f65-e680-fab6-a979a292ae2e'
        label: Custom
        type: continuous
        stops:
        - color: "#9AB5D9"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Total Cases, orientation: left, series: [{axisId: Email - case_management.count_caseId,
            id: Email - case_management.count_caseId, name: Email}, {axisId: Phone
              - case_management.count_caseId, id: Phone - case_management.count_caseId,
            name: Phone}, {axisId: Web - case_management.count_caseId, id: Web - case_management.count_caseId,
            name: Web}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_types: {}
    series_colors: {}
    label_color: ["#80868B"]
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Trend of all cases by channel
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 7
    col: 0
    width: 8
    height: 5
  - title: Link to dashboards
    name: Link to dashboards
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [case_management.dash_nav]
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Which open cases should I focus on first?</font>
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Where are our cases coming from, what type
      of open cases do we have and how are we trending across priority?</font>
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 1
  - name: Case Overview & Trends
    type: text
    title_text: Case Overview & Trends
    subtitle_text: <font color="#c1c1c1">What is our overall case positioning?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: All Open Cases by Priority, Age & Status
    name: All Open Cases by Priority, Age & Status
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.case_number, case_management.account_name, case_management.priority,
      case_age_days, priority_sort_order, case_management.case_status, case_management.case_type,
      case_status_sort_order, case_management.case_created_date, case_management.case_owner_name]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [priority_sort_order, case_age_days desc, case_status_sort_order]
    limit: 500
    dynamic_fields: [{category: dimension, expression: 'diff_days(${case_management.case_created_date},now())',
        label: Case Age (Days), value_format: !!null '', value_format_name: !!null '',
        dimension: case_age_days, _kind_hint: dimension, _type_hint: number}, {category: dimension,
        expression: 'case(when(${case_management.priority}="High","1"),when(${case_management.priority}="Medium","2"),when(${case_management.priority}="Low","3"),"Unknown")',
        label: Priority Sort Order, value_format: !!null '', value_format_name: !!null '',
        dimension: priority_sort_order, _kind_hint: dimension, _type_hint: string},
      {category: dimension, expression: 'case(when(${case_management.case_status}="Escalated","1"),when(${case_management.case_status}="Assigned","2"),when(${case_management.case_status}="New","3"),when(${case_management.case_status}="Waiting
          for customer","4"),"Unknown")', label: Case Status Sort Order, value_format: !!null '',
        value_format_name: !!null '', dimension: case_status_sort_order, _kind_hint: dimension,
        _type_hint: string}]
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
      case_management.user_full_name: Case Owner
      case_management.case_created_date: Case Created Date
      case_management.case_type: Case Type
      case_management.case_status: Case Status
      case_management.priority: Priority
      case_management.account_name: Account Name
      case_management.case_number: Case Number
      case_management.case_owner_name: Case Owner
    series_column_widths:
      case_management.priority: 97
      case_age_days: 124
      case_management.case_number: 106
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
    hidden_fields: [priority_sort_order, case_status_sort_order]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: All open cases by priority, age and status
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 13
    col: 0
    width: 24
    height: 6
  - title: Total Unassigned Cases
    name: Total Unassigned Cases
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [unassigned_cases, open_cases]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Unassigned
          Cases, value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: unassigned_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.agent_is_assigned: 'No', case_management.case_is_closed: 'No'}},
      {category: measure, expression: !!null '', label: Open Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: open_cases, type: count_distinct, _type_hint: number, filters: {
          case_management.case_is_closed: 'No'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unassigned Open Cases
    comparison_label: Open Cases
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of unassigned cases
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 18
    width: 6
    height: 2
  filters:
  - name: Case Created Date
    title: Case Created Date
    type: field_filter
    default_value: this year to second
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: []
    field: case_management.case_created_date
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
    explore: case_management
    listens_to_filters: []
    field: case_management.billing_country
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
    explore: case_management
    listens_to_filters: []
    field: case_management.industry
  - name: Case Origin
    title: Case Origin
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: []
    field: case_management.case_origin
  - name: Case Type
    title: Case Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: []
    field: case_management.case_type
  - name: Case Owner
    title: Case Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: []
    field: case_management.case_owner_name
  - name: Account Name
    title: Account Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: [Industry]
    field: case_management.account_name
