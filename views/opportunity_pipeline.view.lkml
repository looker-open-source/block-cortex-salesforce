# The name of this view in Looker is "Opportunity Pipeline New"
view: opportunity_pipeline {
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
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
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
  #   sql: ${TABLE}.TargetAmount ;;
  # }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: sum_of_actual_amount {
  #   type: sum
  #   sql: ${actual_amount} ;;
  #   value_format_name: Salesforce_Value_Format
  #   #value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
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
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
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
      time,
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
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  dimension: opportunity_id_target_currency {
    type: string
    primary_key: yes
    sql: CONCAT(${opportunity_id},${target_currency}) ;;
  }

  measure: count_of_opportunity_id{
    type: count_distinct
    sql:  ${opportunity_id};;
    value_format: "#,##0"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  measure: count_of_opportunity_id_open{
    type: count_distinct
    filters: [opportunity_is_closed: "No"]
    sql:  ${opportunity_id};;
    value_format: "#,##0"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  measure: count_of_opportunity_id_closed_won{
    type: count_distinct
    filters: [opportunity_is_closed: "Yes",opportunity_is_won: "Yes"]
    sql:  ${opportunity_id};;
    value_format: "#,##0"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  measure: count_of_opportunity_id_closed_lost{
    type: count_distinct
    filters: [opportunity_is_closed: "Yes",opportunity_is_won: "No"]
    sql:  ${opportunity_id};;
    value_format: "#,##0"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
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
    sql: ${TABLE}.OpportunityRecordTypeId ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.ShippingCountry ;;
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
    sql: ${TABLE}.TotalSaleAmountInTargetCurrency ;;
  }


  measure: sum_of_total_sale_amount {
    type: sum
    #sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    value_format_name: Salesforce_Value_Format
    #value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }


  measure: sum_of_total_sale_amount_open {
    type: sum
    filters: [opportunity_is_closed: "No"]
    #sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    value_format_name: Salesforce_Value_Format
    #value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  measure: sum_of_total_sale_amount_closed_won {
    type: sum
    filters: [opportunity_is_closed: "Yes",opportunity_is_won: "Yes"]
    #sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    value_format_name: Salesforce_Value_Format
    #value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }


  measure: sum_of_total_sale_amount_closed_lost {
    type: sum
    filters: [opportunity_is_closed: "Yes",opportunity_is_won: "No"]
    #sql_distinct_key: ${opportunity_id} ;;
    sql: ${total_sale_amount} ;;
    precision: 2
    value_format_name: Salesforce_Value_Format
    #value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
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

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.UserFirstName ;;
  }


  dimension: user_id {
    type: string
    sql: ${TABLE}.UserId ;;
  }

  # dimension: user_is_active {
  #   type: yesno
  #   sql: ${TABLE}.UserIsActive ;;
  # }

  dimension: user_last_name {
    type: string
    sql: ${TABLE}.UserLastName ;;
  }

  dimension: opportunity_owner_name {
    type: string
    sql: ${TABLE}.OpportunityOwnerName ;;
    link: {
      label: "Opportunity Trends And Pipeline Detailed Report"
      url: "/dashboards/cortex_salesforce::opportunity_trends__pipeline_details?Opportunity+Created+Date={{_filters['opportunity_pipeline.opportunity_created_date']}}&Country={{_filters['opportunity_pipeline.billing_country']}}&Industry={{_filters['opportunity_pipeline.industry']}}&Opportunity+Owner={{_filters['opportunity_pipeline.opportunity_owner_name']}}&Target+Currency={{_filters['opportunity_pipeline.target_currency']}}"
    }
  }

  # dimension: user_type {
  #   type: string
  #   sql: ${TABLE}.UserType ;;
  # }

  dimension: target_currency {
    type: string
    sql: ${TABLE}.TargetCurrency ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }



  measure: dash_nav {
    hidden: no
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #FFFFFF; height:525px;width:100%"></div>
      <div style="background-color: #FFFFFF; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/cortex_salesforce::leads_capture__conversion" target=”_blank”>Leads Capture And Conversion</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/cortex_salesforce::opportunity_trends__pipeline" target=”_blank”>Opportunity Trends And Pipeline</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/cortex_salesforce::sales_activities__engagement" target=”_blank”>Sales Activities And Engagement</a>
        </nav>
        </nav>
      </div>
    <div style="background-color: #FFFFFF; height:500px;width:100%"></div>;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_first_name,
      opportunity_name,
      account_name,
      user_last_name,
      opportunity_owner_name
    ]
  }
}
