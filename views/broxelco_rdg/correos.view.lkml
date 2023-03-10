view: correos {
  sql_table_name: broxelco_rdg.Correos ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.Anio ;;
  }

  dimension_group: bounced_at {
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
    sql: ${TABLE}.Bounced_At_Date ;;
  }

  dimension: campaingn_name {
    type: string
    sql: ${TABLE}.Campaingn_Name ;;
  }

  dimension: campaingn_reference {
    type: number
    sql: ${TABLE}.Campaingn_Reference ;;
  }

  dimension_group: clicked_at {
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
    sql: ${TABLE}.Clicked_At_Date ;;
  }

  dimension: delivery {
    type: string
    sql: ${TABLE}.Delivery ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.Email_Template ;;
  }

  dimension_group: hit_goal_at {
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
    sql: ${TABLE}.Hit_Goal_At_Date ;;
  }

  dimension: intercom_base_id {
    type: number
    sql: ${TABLE}.Intercom_Base_Id ;;
  }

  dimension_group: marked_at {
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
    sql: ${TABLE}.Marked_At_Date ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: message_channel {
    type: string
    sql: ${TABLE}.Message_Channel ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.Message_Id ;;
  }

  dimension: message_title {
    type: string
    sql: ${TABLE}.Message_Title ;;
  }

  dimension: message_type {
    type: string
    sql: ${TABLE}.Message_Type ;;
  }

  dimension: message_version {
    type: number
    sql: ${TABLE}.Message_Version ;;
  }

  dimension_group: opened_at {
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
    sql: ${TABLE}.Opened_At_Date ;;
  }

  dimension: plataforma {
    type: string
    sql: ${TABLE}.Plataforma ;;
  }

  dimension: responded_at_date {
    type: string
    sql: ${TABLE}.Responded_At_Date ;;
  }

  dimension_group: sent_at {
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
    sql: ${TABLE}.Sent_At_Date ;;
  }

  dimension_group: unsubscribed_at {
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
    sql: ${TABLE}.Unsubscribed_At_Date ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.User_Email ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [campaingn_name]
  }
}
