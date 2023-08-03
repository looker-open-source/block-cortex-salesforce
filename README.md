<h1><span style="color:#2d7eea">Google Cloud Cortex Framework for Salesforce</span></h1>

<h2><span style="color:#2d7eea">Data Foundation with Salesforce</span></h2>

What insights are possible?

Several pre-defined high-level dashboard samples are included:
- **1. Leads Capture & Conversion** - Understand leads generated from marketing activities, current status, and how quickly sales are converting to opportunities.
- **2. Opportunity Trends & Pipeline** - Identify open opportunities and their current stage, which are likely to close and how well sales teams are converting to wins.
- **3. Sales Activities & Engagement** - Highlight leads and opportunities which need immediate follow up and understand overall engagement trends across sales.
- **4. Case Overview & Trends** - Understand overall customer service position across all open cases and case trends.
- **5. Case Management & Resolution** - Get a pulse check on how efficient the service team is at case resolution and highlight any long running open cases for prioritization.
- **6. Accounts with Cases** - Identify which accounts have open cases and which need immediate focus.

These 6 dashboards are accompanied by 5 supplemental detail dashboards with pertinent drill information. The dashboards have been organized by relationship to one of the 6 primary dashboards.
(For example, dashboards related to "1. Leads Capture & Conversion" will have titles following this pattern "1_a" "1_b").

<h2><span style="color:#2d7eea">Required Customizations</span></h2>

>   ❕ Required Constant Values are configured during the Installation process

- **Connection**: In the manifest.lkml file, update the value of the CONNECTION_NAME constant.

- **GCP Project**: The GCP project where the Salesforce reporting dataset resides in BigQuery (i.e. GCP project id). <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects"> Identifying Project ID</a>

- **SFDC Dataset**: The deployed Cortex Data Foundation _REPORTING dataset where the Salesforce views reside within the GCP BigQuery project.

<h2><span style="color:#2d7eea">Notable Dependencies</span></h2>

- Deployment of <a href="https://github.com/GoogleCloudPlatform/cortex-data-foundation">Cortex Data Foundation</a> within BigQuery is required to leverage these analytics dashboard samples

<h2><span style="color:#2d7eea">Additional Resources</span></h2>

To learn more about LookML and how to develop visit:
- [Looker Best Practices](https://cloud.google.com/looker/docs/best-practices/home)
- [Looker/Google Cloud Training](https://www.cloudskillsboost.google/catalog)
