#This view has been made to combine Account Industry and Lead Industry into one
#field named "Industry" for Sales Activities & Engagement Dashboard.
#While joining with the views of Sales Activities, Account Id is used to join
#so only Account Industry would be retrievable.


view: account_industry {

    derived_table: {

      sql:
      Select distinct AccountIndustry,AccountId from

      (Select distinct AccountIndustry as AccountIndustry,AccountId as AccountId from `@{GCP_PROJECT_ID}.@{SFDC_DATASET}.SalesActivities` as a

        UNION ALL

        Select distinct AccountIndustry as AccountIndustry,AccountId as AccountId from `@{GCP_PROJECT_ID}.@{SFDC_DATASET}.OpportunityPipeline` as b

        UNION ALL

        Select distinct LeadIndustry as AccountIndustry, '' as AccountId from `@{GCP_PROJECT_ID}.@{SFDC_DATASET}.SalesActivities` as c

        );;

    }


    dimension: account_id {
      type: string
      primary_key: yes
      sql: ${TABLE}.AccountId ;;
    }

    dimension: account_industry {
      type:string
      sql: ${TABLE}.AccountIndustry ;;
    }

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: account_industry {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
