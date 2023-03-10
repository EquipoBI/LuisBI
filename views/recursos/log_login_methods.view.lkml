view: log_login_methods {
  sql_table_name: recursos.LogLoginMethods ;;

  dimension_group: date_insert {
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
    sql: ${TABLE}.DateInsert ;;
  }

  dimension: device_platform {
    type: string
    sql: ${TABLE}.DevicePlatform ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ErrorMessage ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.Ip ;;
  }

  dimension: log_login_methods_id {
    type: number
    sql: ${TABLE}.LogLoginMethodsId ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.Method ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }

  dimension: success {
    type: string
    sql: ${TABLE}.Success ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
