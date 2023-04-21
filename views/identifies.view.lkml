# The name of this view in Looker is "Identifies"
view: identifies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FRONTEND_PROD"."IDENTIFIES"
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Anonymous ID" in Explore.

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}."ANONYMOUS_ID" ;;
  }

  dimension: context_actions_amplitude_session_id {
    type: number
    sql: ${TABLE}."CONTEXT_ACTIONS_AMPLITUDE_SESSION_ID" ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}."CONTEXT_CAMPAIGN_CONTENT" ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}."CONTEXT_CAMPAIGN_MEDIUM" ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}."CONTEXT_CAMPAIGN_NAME" ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}."CONTEXT_CAMPAIGN_SOURCE" ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}."CONTEXT_IP" ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}."CONTEXT_LIBRARY_NAME" ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}."CONTEXT_LIBRARY_VERSION" ;;
  }

  dimension: context_locale {
    type: string
    sql: ${TABLE}."CONTEXT_LOCALE" ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_PATH" ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_REFERRER" ;;
  }

  dimension: context_page_search {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_SEARCH" ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_TITLE" ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_URL" ;;
  }

  dimension: context_protocols_source_id {
    type: string
    sql: ${TABLE}."CONTEXT_PROTOCOLS_SOURCE_ID" ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}."CONTEXT_USER_AGENT" ;;
  }

  dimension: counter_chrome_reverse_metadata_sidebar_viewed {
    type: number
    sql: ${TABLE}."COUNTER_CHROME_REVERSE_METADATA_SIDEBAR_VIEWED" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_counter_chrome_reverse_metadata_sidebar_viewed {
    type: sum
    sql: ${counter_chrome_reverse_metadata_sidebar_viewed} ;;
  }

  measure: average_counter_chrome_reverse_metadata_sidebar_viewed {
    type: average
    sql: ${counter_chrome_reverse_metadata_sidebar_viewed} ;;
  }

  dimension: counter_home_chrome_intro_widget_install_clicked {
    type: number
    sql: ${TABLE}."COUNTER_HOME_CHROME_INTRO_WIDGET_INSTALL_CLICKED" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_at {
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."DISPLAY_NAME" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."DOMAIN" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: license_type {
    type: string
    sql: ${TABLE}."LICENSE_TYPE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: original_timestamp {
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
    sql: ${TABLE}."ORIGINAL_TIMESTAMP" ;;
  }

  dimension: persona_count {
    type: number
    sql: ${TABLE}."PERSONA_COUNT" ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}."PLAN" ;;
  }

  dimension: purpose_count {
    type: number
    sql: ${TABLE}."PURPOSE_COUNT" ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}."RECEIVED_AT" ;;
  }

  dimension: res_height {
    type: number
    sql: ${TABLE}."RES_HEIGHT" ;;
  }

  dimension: res_width {
    type: number
    sql: ${TABLE}."RES_WIDTH" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}."ROLES" ;;
  }

  dimension: salesforce_account_id {
    type: string
    sql: ${TABLE}."SALESFORCE_ACCOUNT_ID" ;;
  }

  dimension: salesforce_account_type {
    type: string
    sql: ${TABLE}."SALESFORCE_ACCOUNT_TYPE" ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}."SENT_AT" ;;
  }

  dimension_group: tenant_created {
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
    sql: ${TABLE}."TENANT_CREATED_AT" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."TIMESTAMP" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."USERNAME" ;;
  }

  dimension_group: uuid_ts {
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
    sql: ${TABLE}."UUID_TS" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_name,
      context_campaign_name,
      context_library_name,
      first_name,
      last_name,
      username,
      name,
      users.id,
      users.username,
      users.name,
      users.last_name,
      users.first_name,
      users.context_library_name,
      users.context_campaign_name,
      users.display_name
    ]
  }
}
