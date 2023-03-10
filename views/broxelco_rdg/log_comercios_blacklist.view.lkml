view: log_comercios_blacklist {
  sql_table_name: broxelco_rdg.log_comerciosBlacklist ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accion {
    type: string
    sql: ${TABLE}.Accion ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
