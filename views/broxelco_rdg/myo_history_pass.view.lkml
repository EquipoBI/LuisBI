view: myo_history_pass {
  sql_table_name: broxelco_rdg.myo_history_pass ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension_group: password {
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
    sql: ${TABLE}.PasswordDate ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
