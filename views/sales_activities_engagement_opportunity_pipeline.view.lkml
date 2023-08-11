view: sales_activities_engagement_opportunity_pipeline {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GCP_PROJECT_ID}.@{SFDC_DATASET}.OpportunityPipeline`
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

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.


  # dimension: annual_revenue {
  #   type: number
  #   sql: ${TABLE}.AnnualRevenue ;;
  # }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.AccountBillingCountry ;;
  }


  dimension: industry {
    type: string
    sql: ${TABLE}.AccountIndustry ;;
  }


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
    #primary_key: yes
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension: opportunity_id_target_currency {
    type: string
    primary_key: yes
    sql: CONCAT(${opportunity_id},${target_currency}) ;;
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


  dimension: total_sale_amount {
    type: number
    sql: ${TABLE}.TotalSaleAmountInTargetCurrency ;;
  }

  measure: sum_of_total_sale_amount {
    type: sum_distinct
    sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    value_format_name: Salesforce_Value_Format
    #value_format: "[>=1000000000]$0.00,,,\"B\";[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  }


  dimension: user_full_name {
    type: string
    sql: ${TABLE}.OpportunityOwnerName ;;
  }


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

  dimension: target_currency {
    type: string
    sql: ${TABLE}.TargetCurrency ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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
