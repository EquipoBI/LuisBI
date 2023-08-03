view: asignacion_final_sr {
  sql_table_name: broxelco_rdg.AsignacionFinalSR ;;

  dimension: bimestre_dispersion {
    type: string
    sql: ${TABLE}.BimestreDispersion ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: curp {
    type: string
    sql: ${TABLE}.CURP ;;
  }

  dimension_group: fecha_asignacion {
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
    sql: ${TABLE}.FechaAsignacion ;;
  }

  dimension_group: fecha_nacimiento {
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
    sql: ${TABLE}.FechaNacimiento ;;
  }

  dimension: folio_bimestre_carga {
    type: string
    sql: ${TABLE}.FolioBimestreCarga ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.Municipio ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: numero_serie_ine {
    type: string
    sql: ${TABLE}.NumeroSerieINE ;;
  }

  dimension: periodo_dispersion {
    type: string
    sql: ${TABLE}.PeriodoDispersion ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
