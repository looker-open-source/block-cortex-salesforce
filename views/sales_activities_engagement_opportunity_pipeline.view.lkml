view: sales_activities_engagement_opportunity_pipeline {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GCP_PROJECT}.@{SFDC_DATASET}.OpportunityPipeline`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: account_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.AccountCreatedDatestamp ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Description" in Explore.

  # dimension: account_description {
  #   type: string
  #   sql: ${TABLE}.AccountDescription ;;
  # }

  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountId ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: account_owner {
    type: string
    sql: ${TABLE}.AccountOwnerId ;;
  }

  # dimension: account_type {
  #   type: string
  #   sql: ${TABLE}.AccountType ;;
  # }

  # dimension: actual_amount {
  #   type: number
  #   sql: ${TABLE}.ActualAmount ;;
  # }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: sum_of_actual_amount {
  #   type: sum
  #   sql: ${actual_amount} ;;
  #   value_format_name: Salesforce_Value_Format
  #   #value_format: "[>=1000000000]$0.00,,,\"B\";[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  # }

  # measure: total_actual_amount {
  #   type: sum
  #   sql: ${actual_amount} ;;
  # }

  # measure: average_actual_amount {
  #   type: average
  #   sql: ${actual_amount} ;;
  # }

  # dimension: annual_revenue {
  #   type: number
  #   sql: ${TABLE}.AnnualRevenue ;;
  # }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.AccountBillingCountry ;;
  }

  # dimension: closed_opportunities_by_industry {
  #   type: number
  #   sql: ${TABLE}.ClosedOpportunitiesByIndustry ;;
  # }

  # dimension: customers_accounts_with_opportunities {
  #   type: number
  #   sql: ${TABLE}.CustomersAccountsWithOpportunities ;;
  # }

  # dimension: deals_value_with_different_probabilities {
  #   type: number
  #   sql: ${TABLE}.DealsValueWithDifferentProbabilities ;;
  # }

  dimension: industry {
    type: string
    sql: ${TABLE}.AccountIndustry ;;
  }

  # dimension: key_opportunities_pipeline {
  #   type: number
  #   sql: ${TABLE}.KeyOpportunitiesPipeline ;;
  # }

  # dimension: number_of_employees {
  #   type: number
  #   sql: ${TABLE}.NumberOfEmployees ;;
  # }

  # dimension: open_opportunities {
  #   type: number
  #   sql: ${TABLE}.OpenOpportunities ;;
  # }

  # dimension: open_opportunities_by_industry {
  #   type: number
  #   sql: ${TABLE}.OpenOpportunitiesByIndustry ;;
  # }

  # dimension: opportunities_by_account_country {
  #   type: number
  #   sql: ${TABLE}.OpportunitiesByAccountCountry ;;
  # }

  dimension_group: opportunity_closed {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.OpportunityCloseDate ;;
  }

  dimension_group: opportunity_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OpportunityCreatedDatestamp ;;
  }

  # dimension: opportunity_description {
  #   type: string
  #   sql: ${TABLE}.OpportunityDescription ;;
  # }

  dimension: opportunity_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.OpportunityId ;;
  }

  measure: count_of_opportunity_id{
    type: count_distinct
    sql:  ${opportunity_id};;
  }

  dimension: opportunity_is_closed {
    type: yesno
    sql: ${TABLE}.IsOpportunityClosed ;;
  }

  # dimension: opportunity_is_deleted {
  #   type: yesno
  #   sql: ${TABLE}.OpportunityIsDeleted ;;
  # }

  dimension: opportunity_is_won {
    type: yesno
    sql: ${TABLE}.IsOpportunityWon ;;
  }

  dimension: opportunity_name {
    type: string
    sql: ${TABLE}.OpportunityName ;;
  }

  dimension: opportunity_owner_id {
    type: string
    sql: ${TABLE}.OpportunityOwnerId ;;
  }

  dimension: opportunity_record_type_name {
    type: string
    sql: ${TABLE}.OpportunityRecordTypeName ;;
  }

  # dimension: opportunity_pipeline_by_rep {
  #   type: number
  #   sql: ${TABLE}.OpportunityPipelineByRep ;;
  # }

  # dimension: opportunity_pipeline_value_by_rep {
  #   type: number
  #   sql: ${TABLE}.OpportunityPipelineValueByRep ;;
  # }

  dimension: opportunity_stage {
    type: string
    sql: ${TABLE}.OpportunityStageName ;;
  }

  # dimension: opportunity_type {
  #   type: string
  #   sql: ${TABLE}.OpportunityType ;;
  # }

  dimension: probability {
    type: number
    sql: ${TABLE}.OpportunityProbability ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.AccountShippingCountry ;;
  }

  # dimension_group: stagechange_date {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.StagechangeDateTime ;;
  # }

  # dimension: top_customer_byrevenue {
  #   type: number
  #   sql: ${TABLE}.TopCustomerByrevenue ;;
  # }

  dimension: total_sale_amount {
    type: number
    sql: ${TABLE}.TotalSaleAmount ;;
  }

  measure: sum_of_total_sale_amount {
    type: sum_distinct
    sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    #value_format_name: Salesforce_Value_Format
    value_format: "[>=1000000000]$0.00,,,\"B\";[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  }

  # dimension: total_value_of_closed_won_deals {
  #   type: number
  #   sql: ${TABLE}.TotalValueOfClosedWonDeals ;;
  # }

  # dimension: total_value_of_closed_won_deals_by_rep {
  #   type: number
  #   sql: ${TABLE}.TotalValueOfClosedWonDealsByRep ;;
  # }

  # dimension: total_value_of_lost_deals {
  #   type: number
  #   sql: ${TABLE}.TotalValueOfLostDeals ;;
  # }

  # dimension: total_value_of_lost_deals_by_rep {
  #   type: number
  #   sql: ${TABLE}.TotalValueOfLostDealsByRep ;;
  # }

  # dimension: user_contact_id {
  #   type: string
  #   sql: ${TABLE}.UserContactId ;;
  # }

  # dimension: user_country {
  #   type: string
  #   sql: ${TABLE}.UserCountry ;;
  # }

  # dimension_group: user_created {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.UserCreatedDate ;;
  # }

  # dimension: user_email {
  #   type: string
  #   sql: ${TABLE}.UserEmail ;;
  # }

  # dimension: user_employee_number {
  #   type: string
  #   sql: ${TABLE}.UserEmployeeNumber ;;
  # }

  # dimension: user_first_name {
  #   type: string
  #   sql: ${TABLE}.UserFirstName ;;
  # }

  dimension: user_full_name {
    type: string
    sql: ${TABLE}.OpportunityOwnerName ;;
  }

  # dimension: user_id {
  #   type: string
  #   sql: ${TABLE}.UserId ;;
  # }

  # dimension: user_is_active {
  #   type: yesno
  #   sql: ${TABLE}.UserIsActive ;;
  # }

  # dimension: user_last_name {
  #   type: string
  #   sql: ${TABLE}.UserLastName ;;
  # }

  # dimension: user_name {
  #   type: string
  #   sql: ${TABLE}.UserName ;;
  # }

  # dimension: user_type {
  #   type: string
  #   sql: ${TABLE}.UserType ;;
  # }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  #Added to Opportunity_pipeline2
  dimension_group: last_activity_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.OpportunityLastActivityDate ;;
  }


  # dimension: total_sale_amount_conv {
  #   type: number
  #   sql: ${TABLE}.TotalSaleAmount * ${sf_currency_conversion.conversion_rate} ;;
  # }

  # measure: sum_of_total_sale_amount_conv {
  #   #type: sum
  #   type: sum_distinct
  #   sql_distinct_key: ${opportunity_id} ;;
  #   sql: ${total_sale_amount_conv} ;;
  #   precision: 2
  #   value_format_name: Salesforce_Value_Format
  # }

  # dimension: opportunity_expected_value_conv {
  #   type: number
  #   sql: ${TABLE}.OpportunityExpectedValue * ${sf_currency_conversion.conversion_rate}  ;;
  #   value_format_name: Salesforce_Value_Format
  # }

  # measure: Total_Opportunity_Value_conv {
  #   type: sum_distinct
  #   sql_distinct_key: ${opportunity_id} ;;
  #   sql: ${opportunity_expected_value_conv} ;;
  #   value_format_name: Salesforce_Value_Format
  # }



  # dimension: opportunity_expected_value {
  #   type: number
  #   sql: ${TABLE}.OpportunityExpectedValue ;;
  #   value_format_name: Salesforce_Value_Format
  #   #value_format: "[>=1000000000]$0.00,,,\"B\";[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  # }

  # measure: Total_Opportunity_Value{
  #   type: sum_distinct
  #   sql_distinct_key: ${TABLE}.OpportunityId ;;
  #   sql: ${TABLE}.OpportunityExpectedValue ;;
  #   value_format_name: Salesforce_Value_Format
  # # value_format: "[>=1000000000]$0.00,,,\"B\";[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  # }

  dimension: overdue_days_tier {
    type: tier
    tiers: [1,25,50,100,200,500,1000]
    style: integer
    #sql: DATETIME_DIFF(DATETIME(CURRENT_TIMESTAMP(), 'UTC'), DATETIME((TIMESTAMP_TRUNC(${TABLE}.OpportunityClosedDate , DAY)), 'UTC'), DAY) ;;
    sql: DATE_DIFF(DATE(CURRENT_TIMESTAMP()), DATE(${TABLE}.OpportunityCloseDate), DAY) ;;

  }

  dimension: overdue_days_range {
    type: tier
    tiers: [1,25,50,100,200,500,1000]
    style: integer
    #sql: DATETIME_DIFF(DATETIME(CURRENT_TIMESTAMP(), 'UTC'), DATETIME((TIMESTAMP_TRUNC(${TABLE}.OpportunityClosedDate , DAY)), 'UTC'), DAY) ;;
    sql: DATE_DIFF(DATE(CURRENT_TIMESTAMP()), DATE(${TABLE}.OpportunityCloseDate), DAY) ;;
    link: {
      label: "Overdue Opportunities Detail Report"
      url: "/dashboards/cortex_salesforce::sales_activities__engagement_overdue_opportunities_details?Opportunity+Created+Date={{_filters['sales_activities_engagement_opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['sales_activities_engagement_opportunity_pipeline.billing_country']}}&Industry={{_filters['sales_activities_engagement_opportunity_pipeline.industry']}}&Stage={{_filters['sales_activities_engagement_opportunity_pipeline.opportunity_stage']}}&Owner={{_filters['sales_activities_engagement_opportunity_pipeline.user_full_name']}}&Overdue+Days+Range={{sales_activities_engagement_opportunity_pipeline.overdue_days_range._value}}"
    }
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_full_name,
      opportunity_name,
      account_name
    ]
  }
}
