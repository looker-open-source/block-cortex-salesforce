

# Define the database connection to be used for this model.
connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"


# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: cortex_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cortex_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Cortex"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

include: "/LookML_Dashboard/*.dashboard.lookml"

#



named_value_format: Salesforce_Value_Format {
  value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
}








explore: case_management{}

explore: opportunity_pipeline {
  # join: sf_currency_conversion {
  #   type: left_outer
  #   sql_on: ${opportunity_pipeline.opportunity_closed_date_date} = ${sf_currency_conversion.conversion_date}
  #     AND ${sf_currency_conversion.source_currency} = 'USD';;
  #   relationship: many_to_one
  # }
}

explore: leads_capture_conversion {
  # join: sf_currency_conversion {
  #   type: left_outer
  #   sql_on: ${leads_capture_conversion.opportunity_closed_date} = ${sf_currency_conversion.conversion_date}
  #     AND ${sf_currency_conversion.source_currency} = 'USD';;
  #   relationship: many_to_one
  # }
}



explore:sales_activities_engagement  {
join: sales_rep {
  view_label: "SalesActivitiesUser"
  type: full_outer
  sql_on:${sales_activities_engagement.sales_rep_owner_id}=${sales_rep.sales_rep_id} ;;
  relationship: many_to_one
  }

  join: account_country {
    view_label: "AccountCountry"
    type: left_outer
    sql_on: ${sales_activities_engagement.account_id}=${account_country.account_id} ;;
    relationship:  many_to_one
  }

  join: account_industry {
    type: left_outer
    sql_on: ${sales_activities_engagement.account_id}=${account_industry.account_id} ;;
    relationship: many_to_one
  }

  }


explore: sales_activities_engagement_opportunity_pipeline {
# from: opportunity_pipeline2
  join: sales_rep {
  view_label: "SalesActivitiesUser"
  type: left_outer
  sql_on: ${sales_activities_engagement_opportunity_pipeline.user_full_name}=${sales_rep.sales_rep} ;;
  #AND ${sales_activities_engagement.sales_rep_owner}=${sales_rep.sales_rep};;
  relationship: many_to_one
}

  join: account_country {
    view_label: "AccountCountry"
    type: left_outer
    sql_on: ${sales_activities_engagement_opportunity_pipeline.account_id}=${account_country.account_id} ;;
    relationship:  many_to_one
  }

  join: account_industry {
    type: left_outer
    sql_on: ${sales_activities_engagement_opportunity_pipeline.account_id}=${account_industry.account_id} ;;
    relationship: many_to_one
  }

  # join: sf_currency_conversion {
  #   type: left_outer
  #   sql_on: ${sales_activities_engagement_opportunity_pipeline.opportunity_closed_date} = ${sf_currency_conversion.conversion_date}
  #     AND ${sf_currency_conversion.source_currency} = 'USD';;
  #   relationship: many_to_one


  # }

  join: sales_activities_engagement{
    type: left_outer
    sql_on: ${sales_activities_engagement.opportunity_id}=${sales_activities_engagement_opportunity_pipeline.opportunity_id} ;;
    relationship: one_to_many
  }
}

#********************************************************************************************************#

