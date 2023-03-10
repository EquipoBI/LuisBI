view: afiliaciones {
  sql_table_name: broxelco_rdg.Afiliaciones ;;

  dimension: afiliacion {
    type: number
    sql: ${TABLE}.Afiliacion ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.FechaAlta ;;
  }

  dimension: id_afiliacion {
    type: number
    sql: ${TABLE}.idAfiliacion ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
