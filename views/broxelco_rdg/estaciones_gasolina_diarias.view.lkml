view: estaciones_gasolina_diarias {
  sql_table_name: broxelco_rdg.EstacionesGasolinaDiarias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: diesel {
    type: number
    sql: ${TABLE}.Diesel ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: id_estacion {
    type: string
    sql: ${TABLE}.idEstacion ;;
  }

  dimension: magna {
    type: number
    sql: ${TABLE}.magna ;;
  }

  dimension: premium {
    type: number
    sql: ${TABLE}.Premium ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
