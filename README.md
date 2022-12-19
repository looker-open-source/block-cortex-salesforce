<h1><span style="color:#2d7eea">Google Cloud Cortex Framework for SALESFORCE</span></h1>

<h2><span style="color:#2d7eea">Data Foundation Salesforce</span></h2>

What does this Looker Block do for me?

There are several high-level dashboards included:
- **1. Leads Capture & Conversion** - Monitor Leads Captured by Source and Industry, status of the Leads and Lead Conversion Trends.
- **2. Opportunity Trends & Pipeline** - Insights on Opportunities in the Pipeline, Opportunity Trends and their value.
- **3. Sales Activities & Engagement** - Monitor Follow-Ups happening for Leads and Opportunities, whether sufficient follow-ups are happening and which Opportunities need immediate follow-up.
- **4. Case Overview & Trends** - Monitor overall status of Cases and their trends by priority and source.
- **5. Case Management & Resolution** - Insights on how Cases are being managed, how fast they are being resolved and how the Agents are performing.
- **6. Accounts with Cases** - Monitor which Accounts have Cases and which should be focused on.

These 6 dashboards are accompanied by 5 supplemental dashboards with pertinent drill information. The dashboards have been organized by relationship to one of the 6 primary dashboards.
(For example, dashboards related to "1. Leads Capture & Conversion" will have titles following this pattern "1_a" "1_b").

<h2><span style="color:#2d7eea">Required Customizations</span></h2>

>   ❕ Required Constant Values are configured during the Installation process

- **Connection**: In the manifest.lkml file, update the value of the CONNECTION_NAME constant.

- **GCP Project**: The GCP project name where the SALESFORCE reporting dataset resides in BigQuery (not project id).

- **SFDC Dataset**: The deployed Cortex Data Foundation _REPORTING dataset where the SALESFORCE views reside within the GCP BigQuery project.

<h2><span style="color:#2d7eea">Additional Resources</span></h2>

To learn more about LookML and how to develop visit:
- [Looker User Guide](https://looker.com/guide)
- [Looker Help Center](https://help.looker.com)
- [Looker University](https://training.looker.com/)
