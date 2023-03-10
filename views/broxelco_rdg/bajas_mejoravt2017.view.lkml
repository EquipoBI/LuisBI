view: bajas_mejoravt2017 {
  sql_table_name: broxelco_rdg.BajasMejoravt2017 ;;

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension_group: fecha_de_baja {
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
    sql: ${TABLE}."Fecha de baja" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
