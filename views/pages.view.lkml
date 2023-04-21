# The name of this view in Looker is "Pages"
view: pages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FRONTEND_PROD"."PAGES"
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
  # This dimension will be called "Announcement Title" in Explore.

  dimension: announcement_title {
    type: string
    sql: ${TABLE}."ANNOUNCEMENT_TITLE" ;;
  }

  dimension: announcement_type {
    type: string
    sql: ${TABLE}."ANNOUNCEMENT_TYPE" ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}."ANONYMOUS_ID" ;;
  }

  dimension: asset_connector {
    type: string
    sql: ${TABLE}."ASSET_CONNECTOR" ;;
  }

  dimension: asset_guid {
    type: string
    sql: ${TABLE}."ASSET_GUID" ;;
  }

  dimension: asset_qualified_name {
    type: string
    sql: ${TABLE}."ASSET_QUALIFIED_NAME" ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}."ASSET_TYPE" ;;
  }

  dimension: asset_type_name {
    type: string
    sql: ${TABLE}."ASSET_TYPE_NAME" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: certificate_status {
    type: string
    sql: ${TABLE}."CERTIFICATE_STATUS" ;;
  }

  dimension: connector_name {
    type: string
    sql: ${TABLE}."CONNECTOR_NAME" ;;
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

  dimension: domain {
    type: string
    sql: ${TABLE}."DOMAIN" ;;
  }

  dimension: is_custom {
    type: yesno
    sql: ${TABLE}."IS_CUSTOM" ;;
  }

  dimension: is_visual_query {
    type: yesno
    sql: ${TABLE}."IS_VISUAL_QUERY" ;;
  }

  dimension: matched_asset_count {
    type: number
    sql: ${TABLE}."MATCHED_ASSET_COUNT" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_matched_asset_count {
    type: sum
    sql: ${matched_asset_count} ;;
  }

  measure: average_matched_asset_count {
    type: average
    sql: ${matched_asset_count} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: path {
    type: string
    sql: ${TABLE}."PATH" ;;
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

  dimension: referrer {
    type: string
    sql: ${TABLE}."REFERRER" ;;
  }

  dimension: salesforce_account_id {
    type: string
    sql: ${TABLE}."SALESFORCE_ACCOUNT_ID" ;;
  }

  dimension: search {
    type: string
    sql: ${TABLE}."SEARCH" ;;
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

  dimension: tab {
    type: string
    sql: ${TABLE}."TAB" ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: total_columns {
    type: number
    sql: ${TABLE}."TOTAL_COLUMNS" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}."TYPE_NAME" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      context_library_name,
      name,
      asset_type_name,
      type_name,
      context_campaign_name,
      connector_name,
      asset_qualified_name,
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
