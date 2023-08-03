view: url_shorter {
  sql_table_name: broxelco_rdg.url_shorter ;;

  dimension: activo {
    type: number
    sql: ${TABLE}.Activo ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.FechaCreacion ;;
  }

  dimension: fecha_expiracion {
    type: string
    sql: ${TABLE}.FechaExpiracion ;;
  }

  dimension_group: fecha_ultimo_uso {
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
    sql: ${TABLE}.FechaUltimoUso ;;
  }

  dimension: ip_ultimo_uso {
    type: string
    sql: ${TABLE}.IpUltimoUso ;;
  }

  dimension: limite_usos {
    type: string
    sql: ${TABLE}.LimiteUsos ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.Token ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.Url ;;
  }

  dimension: usos {
    type: number
    sql: ${TABLE}.Usos ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
