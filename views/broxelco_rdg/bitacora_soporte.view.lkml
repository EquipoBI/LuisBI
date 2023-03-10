view: bitacora_soporte {
  sql_table_name: broxelco_rdg.bitacora_soporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: files {
    type: string
    sql: ${TABLE}.files ;;
  }

  dimension: notas {
    type: string
    sql: ${TABLE}.notas ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
