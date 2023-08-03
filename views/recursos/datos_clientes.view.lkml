view: datos_clientes {
  sql_table_name: recursos.DatosClientes ;;

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.CodigoPostal ;;
  }

  dimension: d_estado {
    type: string
    sql: ${TABLE}.d_estado ;;
  }

  dimension: d_mnpio {
    type: string
    sql: ${TABLE}.D_mnpio ;;
  }

  dimension: dias_primer_movimiento {
    type: number
    sql: ${TABLE}.DiasPrimerMovimiento ;;
  }

  dimension: edad {
    type: string
    sql: ${TABLE}.Edad ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.FechaAlta ;;
  }

  dimension_group: fecha_primer_movimiento {
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
    sql: ${TABLE}.FechaPrimerMovimiento ;;
  }

  dimension_group: fecha_ultimo_movimiento {
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
    sql: ${TABLE}.FechaUltimoMovimiento ;;
  }

  dimension: num_cuentas {
    type: number
    sql: ${TABLE}.Num_cuentas ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
