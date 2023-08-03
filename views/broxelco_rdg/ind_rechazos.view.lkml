view: ind_rechazos {
  sql_table_name: broxelco_rdg.ind_rechazos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: afiliacion {
    type: string
    sql: ${TABLE}.Afiliacion ;;
  }

  dimension: codigo_rechazo {
    type: string
    sql: ${TABLE}.CodigoRechazo ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: desc_codigo_rechazo {
    type: string
    sql: ${TABLE}.DescCodigoRechazo ;;
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension_group: fecha_hora_creacion_casa {
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
    sql: ${TABLE}.FechaHoraCreacionCASA ;;
  }

  dimension_group: hora {
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
    sql: ${TABLE}.Hora ;;
  }

  dimension: identificador {
    type: string
    sql: ${TABLE}.Identificador ;;
  }

  dimension: mccgiro_comercio {
    type: string
    sql: ${TABLE}.MCCGiroComercio ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nombre_comercio {
    type: string
    sql: ${TABLE}.NombreComercio ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
