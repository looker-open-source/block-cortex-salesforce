- dashboard: case_management__resolution
  title: Case Management & Resolution
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: UWdtgCusefi33xrpGCmU83
  elements:
  - title: Top Agents by Fastest Avg Resolution Time
    name: Top Agents by Fastest Avg Resolution Time
    model: cortex_salesforce
    explore: case_management
    type: looker_bar
    fields: [avg_case_resolution_time_days, count_of_high_priority_cases, case_management.case_owner_name]
    filters:
      case_management.case_closed_date: NOT NULL
      case_management.case_is_closed: 'Yes'
    sorts: [avg_case_resolution_time_days]
    limit: 2000
    dynamic_fields: [{category: measure, expression: !!null '', label: Avg. Case Resolution
          Time (Days), value_format: !!null '', value_format_name: decimal_0, based_on: case_management.case_resolution_time,
        _kind_hint: measure, measure: avg_case_resolution_time_days, type: average,
        _type_hint: number}, {category: measure, expression: !!null '', label: Count
          of High Priority Cases, value_format: !!null '', value_format_name: !!null '',
        based_on: case_management.count_caseId, _kind_hint: measure, measure: count_of_high_priority_cases,
        type: count_distinct, _type_hint: number, filters: {case_management.priority: High}}]
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
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: count_of_high_priority_cases,
            id: count_of_high_priority_cases, name: Count of High Priority Closed
              Cases}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: bottom, series: [
          {axisId: avg_case_resolution_time_days, id: avg_case_resolution_time_days,
            name: Avg. Case Resolution Time (Days) - All Cases}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Agent
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '10'
    series_types:
      count_of_high_priority_cases: line
    series_colors:
      avg_case_resolution_time: "#72BFD4"
      count_of_high_priority_cases: "#212121"
      avg_case_resolution_time_days: "#93b281"
    series_labels:
      avg_case_resolution_time_days: Avg. Case Resolution Time (Days) - All Cases
      count_of_high_priority_cases: Count of High Priority Closed Cases
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Top 10 agents with the quickest average resolution time
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 13
    col: 5
    width: 7
    height: 7
  - title: Top Agents (No of Closed Cases)
    name: Top Agents (No of Closed Cases)
    model: cortex_salesforce
    explore: case_management
    type: looker_column
    fields: [low_priority_closed_cases, medium_priority_closed_cases, high_priority_closed_cases,
      count_of_closed_cases, case_management.case_owner_name]
    filters:
      case_management.case_is_closed: 'Yes'
    sorts: [count_of_closed_cases desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: High Priority
          - Closed Cases, value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: high_priority_closed_cases, type: count_distinct,
        _type_hint: number, filters: {case_management.priority: High}}, {category: measure,
        expression: !!null '', label: Medium Priority - Closed Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: medium_priority_closed_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.priority: Medium}}, {category: measure, expression: !!null '',
        label: Low Priority - Closed Cases, value_format: !!null '', value_format_name: !!null '',
        based_on: case_management.count_caseId, _kind_hint: measure, measure: low_priority_closed_cases,
        type: count_distinct, _type_hint: number, filters: {case_management.priority: Low}},
      {category: measure, expression: !!null '', label: Count of Closed Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: count_of_closed_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.case_is_closed: 'Yes'}}]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
      options:
        steps: 5
    y_axes: [{label: Count, orientation: bottom, series: [{axisId: low_priority_closed_cases,
            id: low_priority_closed_cases, name: Low Priority - Closed Cases}, {axisId: medium_priority_closed_cases,
            id: medium_priority_closed_cases, name: Medium Priority - Closed Cases},
          {axisId: high_priority_closed_cases, id: high_priority_closed_cases, name: High
              Priority - Closed Cases}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Agent
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      low_priority_closed_cases: "#abcbf9"
    series_labels:
      low_priority_closed_cases: Low Priority
      medium_priority_closed_cases: Medium Priority
      high_priority_closed_cases: High Priority
    defaults_version: 1
    hidden_fields: [count_of_closed_cases]
    note_state: collapsed
    note_display: hover
    note_text: Top 10 agents by number of closed cases
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 13
    col: 18
    width: 6
    height: 7
  - title: Case Resolution Count by Priority Trend
    name: Case Resolution Count by Priority Trend
    model: cortex_salesforce
    explore: case_management
    type: looker_column
    fields: [case_management.case_closed_month, low_priority_closed_cases, medium_priority_closed_cases,
      high_priority_closed_cases]
    fill_fields: [case_management.case_closed_month]
    filters:
      case_management.case_is_closed: 'Yes'
    sorts: [case_management.case_closed_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: High Priority
          - Closed Cases, value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: high_priority_closed_cases, type: count_distinct,
        _type_hint: number, filters: {case_management.priority: High}}, {category: measure,
        expression: !!null '', label: Medium Priority - Closed Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: medium_priority_closed_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.priority: Medium}}, {category: measure, expression: !!null '',
        label: Low Priority - Closed Cases, value_format: !!null '', value_format_name: !!null '',
        based_on: case_management.count_caseId, _kind_hint: measure, measure: low_priority_closed_cases,
        type: count_distinct, _type_hint: number, filters: {case_management.priority: Low}}]
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
    y_axes: [{label: Total Cases, orientation: left, series: [{axisId: low_priority_closed_cases,
            id: low_priority_closed_cases, name: Low Priority - Closed Cases}, {axisId: medium_priority_closed_cases,
            id: medium_priority_closed_cases, name: Medium Priority - Closed Cases},
          {axisId: high_priority_closed_cases, id: high_priority_closed_cases, name: High
              Priority - Closed Cases}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_types: {}
    series_colors:
      low_priority_closed_cases: "#F5EBC7"
      medium_priority_closed_cases: "#FADA64"
      high_priority_closed_cases: "#FFCB1E"
    series_labels:
      low_priority_closed_cases: Low Priority Cases
      medium_priority_closed_cases: Medium Priority Cases
      high_priority_closed_cases: High Priority Cases
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Trend of case closure by case priority
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 7
    col: 12
    width: 12
    height: 5
  - title: Top Agents (No of Open Cases)
    name: Top Agents (No of Open Cases)
    model: cortex_salesforce
    explore: case_management
    type: looker_column
    fields: [low_priority_open_cases, medium_priority_open_cases, high_priority_open_cases,
      count_of_open_cases, case_management.case_owner_name]
    filters:
      case_management.case_is_closed: 'No'
      case_management.agent_is_assigned: 'Yes'
    sorts: [count_of_open_cases desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: High Priority
          - Open Cases, value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: high_priority_open_cases, type: count_distinct,
        _type_hint: number, filters: {case_management.priority: High}}, {category: measure,
        expression: !!null '', label: Medium Priority - Open Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: medium_priority_open_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.priority: Medium}}, {category: measure, expression: !!null '',
        label: Low Priority - Open Cases, value_format: !!null '', value_format_name: !!null '',
        based_on: case_management.count_caseId, _kind_hint: measure, measure: low_priority_open_cases,
        type: count_distinct, _type_hint: number, filters: {case_management.priority: Low}},
      {category: measure, expression: !!null '', label: Count of Open Cases, value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.count_caseId, _kind_hint: measure,
        measure: count_of_open_cases, type: count_distinct, _type_hint: number, filters: {
          case_management.case_is_closed: 'No'}}]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
      options:
        steps: 5
    y_axes: [{label: Count, orientation: bottom, series: [{axisId: low_priority_open_cases,
            id: low_priority_open_cases, name: Low Priority - Open Cases}, {axisId: medium_priority_open_cases,
            id: medium_priority_open_cases, name: Medium Priority - Open Cases}, {
            axisId: high_priority_open_cases, id: high_priority_open_cases, name: High
              Priority - Open Cases}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Agent
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      low_priority_open_cases: "#abcbf9"
    series_labels:
      low_priority_open_cases: Low Priority
      medium_priority_open_cases: Medium Priority
      high_priority_open_cases: High Priority
    defaults_version: 1
    hidden_fields: [count_of_open_cases]
    note_state: collapsed
    note_display: hover
    note_text: Top 10 agents by number of open cases
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 13
    col: 12
    width: 6
    height: 7
  - title: Status of Open Cases by Agent
    name: Status of Open Cases by Agent
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.case_owner_name, case_management.case_number, case_management.case_created_date,
      case_management.case_age, case_management.priority, case_management.case_status,
      priority_sort_order, case_status_sort_order]
    filters:
      case_management.case_is_closed: 'No'
      case_management.agent_is_assigned: 'Yes'
    sorts: [priority_sort_order, case_management.case_age desc, case_status_sort_order]
    limit: 5000
    dynamic_fields: [{category: dimension, expression: 'case(when(${case_management.priority}="High","1"),when(${case_management.priority}="Medium","2"),when(${case_management.priority}="Low","3"),"Unknown")',
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
      case_management.user_full_name: Agent Name
      case_management.case_number: Case Number
      case_management.case_created_date: Case Created Date
      case_management.case_age: Case Age (days)
      case_management.case_status: Case Status
      case_management.priority: Priority
      case_management.case_owner_name: Agent Name
    series_types: {}
    defaults_version: 1
    hidden_fields: [priority_sort_order, case_status_sort_order]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Open cases by status and agent
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 20
    col: 0
    width: 24
    height: 9
  - title: Avg Case Resolution Time
    name: Avg Case Resolution Time
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [avg_case_resolution_time]
    filters:
      case_resolution_time: NOT NULL
    dynamic_fields: [{category: dimension, expression: 'diff_days(${case_management.case_created_date},${case_management.case_closed_date})',
        label: Case Resolution Time, value_format: !!null '', value_format_name: !!null '',
        dimension: case_resolution_time, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Avg. Case Resolution Time,
        value_format: !!null '', value_format_name: decimal_0, based_on: case_management.case_resolution_time,
        _kind_hint: measure, measure: avg_case_resolution_time, type: average, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Case Resolution Time (Days)
    hidden_fields: []
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
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Average number of days to resolve cases
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 8
    width: 8
    height: 2
  - title: Avg Case Resolution Time - High Priority
    name: Avg Case Resolution Time - High Priority
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [avg_case_resolution_time]
    filters:
      case_resolution_time: NOT NULL
      case_management.priority: High
    dynamic_fields: [{category: dimension, expression: 'diff_days(${case_management.case_created_date},${case_management.case_closed_date})',
        label: Case Resolution Time, value_format: !!null '', value_format_name: !!null '',
        dimension: case_resolution_time, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Avg. Case Resolution Time,
        value_format: !!null '', value_format_name: decimal_0, based_on: case_management.case_resolution_time,
        _kind_hint: measure, measure: avg_case_resolution_time, type: average, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. High Priority Case Resolution Time (Days)
    hidden_fields: []
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
    y_axes: []
    note_state: expanded
    note_display: hover
    note_text: Average number of days to resolve high priority cases
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 16
    width: 8
    height: 2
  - title: New Tile
    name: New Tile
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
  - name: Case Management & Resolution
    type: text
    title_text: Case Management & Resolution
    subtitle_text: <font color="#c1c1c1">What is our overall case resolution positioning?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">How are my  agents performing?</font>
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 1
  - title: Avg No Cases Handled per Agent
    name: Avg No Cases Handled per Agent
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [case_management.count_caseId, case_management.count_Owner, count_cases_not_in_group,
      no_of_agents]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Count Cases
          not in group, value_format: !!null '', value_format_name: !!null '', based_on: case_management.count_caseId,
        _kind_hint: measure, measure: count_cases_not_in_group, type: count_distinct,
        _type_hint: number, filters: {case_management.agent_is_assigned: 'Yes'}},
      {category: measure, expression: !!null '', label: 'No. of Agents ', value_format: !!null '',
        value_format_name: !!null '', based_on: case_management.case_owner, _kind_hint: measure,
        measure: no_of_agents, type: count_distinct, _type_hint: number, filters: {
          case_management.agent_is_assigned: 'Yes'}}, {category: table_calculation,
        expression: "${count_cases_not_in_group}/${no_of_agents}", label: Avg. No.
          of Cases per Agent, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: avg_no_of_cases_per_agent, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg. Cases Handled per Agent
    value_format: "#,##0"
    defaults_version: 1
    hidden_fields: [case_management.count_Owner, case_management.count_caseId, count_cases_not_in_group,
      no_of_agents]
    y_axes: []
    note_state: expanded
    note_display: hover
    note_text: Avg. No. of Cases Handled per Agent
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 4
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">How efficient are we at resolving cases?</font>
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 1
  - title: Avg Case Resolution Time by Priority Trend
    name: Avg Case Resolution Time by Priority Trend
    model: cortex_salesforce
    explore: case_management
    type: looker_area
    fields: [avg_case_duration_all_cases, avg_case_duration_high_priority, avg_case_duration_medium_priority,
      avg_case_duration_low_priority, case_management.case_closed_month]
    fill_fields: [case_management.case_closed_month]
    filters:
      case_management.case_is_closed: 'Yes'
    sorts: [case_management.case_closed_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, expression: 'diff_days(${case_management.case_created_date},${case_management.case_closed_date})',
        label: Case Duration (Days), value_format: !!null '', value_format_name: !!null '',
        dimension: case_duration_days, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Avg. Case Duration (All Cases),
        value_format: !!null '', value_format_name: decimal_0, based_on: case_duration_days,
        _kind_hint: measure, measure: avg_case_duration_all_cases, type: average,
        _type_hint: number}, {category: measure, expression: !!null '', label: Avg.
          Case Duration - High Priority, value_format: !!null '', value_format_name: decimal_0,
        based_on: case_duration_days, _kind_hint: measure, measure: avg_case_duration_high_priority,
        type: average, _type_hint: number, filters: {case_management.priority: High}},
      {category: measure, expression: !!null '', label: Avg. Case Duration - Medium
          Priority, value_format: !!null '', value_format_name: decimal_0, based_on: case_duration_days,
        _kind_hint: measure, measure: avg_case_duration_medium_priority, type: average,
        _type_hint: number, filters: {case_management.priority: Medium}}, {category: measure,
        expression: !!null '', label: Avg. Case Duration - Low Priority, value_format: !!null '',
        value_format_name: decimal_0, based_on: case_duration_days, _kind_hint: measure,
        measure: avg_case_duration_low_priority, type: average, _type_hint: number,
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: Avg. Duration (Days), orientation: left, series: [{axisId: avg_case_duration_days,
            id: avg_case_duration_days, name: Avg. Case Duration (Days)}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    font_size: '10'
    series_types:
      avg_case_duration_medium_priority: line
      avg_case_duration_low_priority: line
      avg_case_duration_high_priority: line
    series_colors:
      avg_case_duration_days: "#1A73E8"
    series_labels:
      1 - New - avg_case_status_duration_days: New
      2 - Assigned - avg_case_status_duration_days: Assigned
      3 - Escalated - avg_case_status_duration_days: Escalated
    series_point_styles:
      avg_case_duration_high_priority: diamond
      avg_case_duration_low_priority: triangle-down
      avg_case_duration_medium_priority: triangle
    x_axis_datetime_label: "%b %y"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Trend of case resolution time by case priority
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 7
    col: 0
    width: 12
    height: 5
  - title: Open Cases By Status
    name: Open Cases By Status
    model: cortex_salesforce
    explore: case_management
    type: looker_pie
    fields: [case_management.case_status, open_cases]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [open_cases desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, label: Open Cases, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: open_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.case_is_closed: 'No'}}]
    value_labels: legend
    label_type: labPer
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
    note_text: All open cases with different status
    listen:
      Country: case_management.billing_country
      Case Created Date: case_management.case_created_date
      Industry: case_management.industry
      Case Origin: case_management.case_origin
      Case Type: case_management.case_type
      Account Name: case_management.account_name
      Case Owner: case_management.case_owner_name
    row: 13
    col: 0
    width: 5
    height: 7
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
