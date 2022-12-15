- dashboard: accounts_with_cases
  title: Accounts with Cases
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9TJ4hriXEAGXoPoiJqskqv
  elements:
  - title: Top Accounts by Open Cases
    name: Top Accounts by Open Cases
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, case_management.count_caseId]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [case_management.count_caseId desc 0]
    limit: 5000
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
      case_management.account_name: Account Name
      case_management.user_full_name: Case Owner
      case_management.count_caseId: Count of Open Cases
    series_cell_visualizations:
      case_management.count_caseId:
        is_active: true
        palette:
          palette_id: 825d03a0-0696-cff9-f21d-e0edcf95b276
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customer by the highest number of open cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 7
    col: 0
    width: 8
    height: 6
  - title: Top Accounts by Closed Cases
    name: Top Accounts by Closed Cases
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, case_management.count_caseId]
    filters:
      case_management.case_is_closed: 'Yes'
    sorts: [case_management.count_caseId desc 0]
    limit: 5000
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
      case_management.account_name: Account Name
      case_management.user_full_name: Case Owner
      case_management.count_caseId: Count of Closed Cases
    series_cell_visualizations:
      case_management.count_caseId:
        is_active: true
        palette:
          palette_id: cf7065b5-0abb-f276-961c-d0a762b465fc
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customers by the highest number of closed cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 13
    col: 16
    width: 8
    height: 6
  - title: Top Accounts with Escalated Cases
    name: Top Accounts with Escalated Cases
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, case_management.count_caseId]
    filters:
      case_management.case_status: Escalated
      case_management.case_is_closed: 'No'
    sorts: [case_management.count_caseId desc]
    limit: 5000
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
      case_management.account_name: Account Name
      case_management.user_full_name: Case Owner
      case_management.count_caseId: Count of Escalated Cases
    series_cell_visualizations:
      case_management.count_caseId:
        is_active: true
        palette:
          palette_id: 6af7999f-e2d5-1dd4-6a54-d5c4975fae3f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customers by the highest number of escalated cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 13
    col: 0
    width: 8
    height: 6
  - title: Top Accounts by Open Cases Age (Days)
    name: Top Accounts by Open Cases Age (Days)
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, avg_case_age_days]
    filters:
      case_management.case_is_closed: 'No'
    sorts: [avg_case_age_days desc 0]
    limit: 5000
    dynamic_fields: [{category: dimension, expression: 'diff_days(${case_management.case_created_date},now())',
        label: Case Age (Days), value_format: !!null '', value_format_name: !!null '',
        dimension: case_age_days, _kind_hint: dimension, _type_hint: number}, {category: measure,
        expression: !!null '', label: Avg. Case Age (Days), value_format: !!null '',
        value_format_name: decimal_0, based_on: case_age_days, _kind_hint: measure,
        measure: avg_case_age_days, type: average, _type_hint: number}]
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
    series_cell_visualizations:
      avg_case_age_days:
        is_active: true
        palette:
          palette_id: 4dbdfa83-3455-47d1-4c6f-826ba59bafbb
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customers by age of open cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 7
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
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
    single_value_title: Total Cases
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of cases created within the selected date range.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 4
    col: 0
    width: 8
    height: 2
  - title: New Tile
    name: New Tile (2)
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
    single_value_title: Total Open Cases
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
    note_text: Total number of open cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 4
    col: 8
    width: 8
    height: 2
  - title: 'Total # Closed Cases'
    name: 'Total # Closed Cases'
    model: cortex_salesforce
    explore: case_management
    type: single_value
    fields: [closed_cases, case_management.count_caseId]
    sorts: [percent_of_closed_cases]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, label: Closed Cases, based_on: case_management.count_caseId,
        _kind_hint: measure, measure: closed_cases, type: count_distinct, _type_hint: number,
        filters: {case_management.case_is_closed: 'Yes,'}}, {category: table_calculation,
        expression: "${closed_cases}/${case_management.count_caseId}", label: Percent
          of Closed Cases, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percent_of_closed_cases, _type_hint: number}]
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
    single_value_title: Total Closed Cases
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
    note_text: Total number of closed cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 4
    col: 16
    width: 8
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">Which accounts have cases and which should
      we focus on?</font>
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 1
  - name: Accounts With Cases
    type: text
    title_text: Accounts With Cases
    subtitle_text: <font color="#c1c1c1">What is our overall case positioning across
      accounts?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Navigation Bar
    name: Navigation Bar
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
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Top Accounts With High Priority Open Cases
    name: Top Accounts With High Priority Open Cases
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, count_of_high_priority_cases]
    filters:
      case_management.case_is_closed: 'No'
      case_management.priority: High
    sorts: [count_of_high_priority_cases desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{measure: count_of_case_id, based_on: case_management.case_id,
        expression: '', label: Count of Case ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_case_number, based_on: case_management.case_number,
        expression: '', label: Count of Case Number, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: Count of High
          Priority Cases, based_on: case_management.case_id, _kind_hint: measure,
        measure: count_of_high_priority_cases, type: count_distinct, _type_hint: number}]
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
      count_of_case_id_2: Count of High Priority Cases
    series_cell_visualizations:
      count_of_case_id_2:
        is_active: true
        palette:
          palette_id: 3493fa88-aa8a-f201-23a8-4f7bd18e9cb1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#1a73e8"
          - "#E52592"
      count_of_high_priority_cases:
        is_active: true
        palette:
          palette_id: f776d43c-9ce3-ab5a-201a-e897ccd7bae0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
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
    value_labels: legend
    label_type: labPer
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customers by the highest number of high priority open cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 13
    col: 8
    width: 8
    height: 6
  - title: Top Accounts With Unassigned Open Cases
    name: Top Accounts With Unassigned Open Cases
    model: cortex_salesforce
    explore: case_management
    type: looker_grid
    fields: [case_management.account_id, case_management.account_name, count_of_unassigned_open_cases]
    filters:
      case_management.case_is_closed: 'No'
      count_of_unassigned_open_cases: ">0"
    sorts: [count_of_unassigned_open_cases desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: measure, expression: '', label: Count of Unassigned
          Open Cases, based_on: case_management.case_id, _kind_hint: measure, measure: count_of_unassigned_open_cases,
        type: count_distinct, _type_hint: number, filters: {case_management.agent_is_assigned: 'No'}}]
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
      case_management.account_name: Account Name
      case_management.case_number: Case Number
      case_management.case_created_date: Case Created Date
      case_management.case_origin: Case Origin
      case_management.case_status: Status
      case_management.user_full_name: Case Owner
      count_of_unassigned_open_cases: Count of Unassigned Cases
    series_cell_visualizations:
      count_of_unassigned_high_priority_cases:
        is_active: true
        palette:
          palette_id: 343b1650-b3b0-82d6-8012-c40f0ff21478
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#1a73e8"
          - "#E52592"
      count_of_unassigned_open_cases:
        is_active: true
        palette:
          palette_id: e201d75f-3dc5-fdf6-e98d-ee6cd1b7740b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#a6d2ff"
          - "#1A73E8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [case_management.account_id]
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Top customers by the highest number of unassigned open cases.
    listen:
      Case Created Date: case_management.case_created_date
      Country: case_management.billing_country
      Industry: case_management.industry
      Account Name: case_management.account_name
      Case Type: case_management.case_type
      Case Origin: case_management.case_origin
      Case Owner: case_management.case_owner_name
    row: 7
    col: 8
    width: 8
    height: 6
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
      type: tag_list
      display: popover
    model: cortex_salesforce
    explore: case_management
    listens_to_filters: []
    field: case_management.industry
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
    listens_to_filters: []
    field: case_management.account_name
  - name: Case Type
    title: Case Type
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
    field: case_management.case_type
  - name: Case Origin
    title: Case Origin
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
    field: case_management.case_origin
