view: movimientos {
  sql_table_name: recursos.Movimientos ;;

  dimension: autorizacion {
    type: string
    sql: ${TABLE}.Autorizacion ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: codigo_estatus {
    type: string
    sql: ${TABLE}.CodigoEstatus ;;
  }

  dimension: codigo_tipo {
    type: number
    sql: ${TABLE}.CodigoTipo ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: descripcion_estatus {
    type: string
    sql: ${TABLE}.DescripcionEstatus ;;
  }

  dimension: emisor {
    type: string
    sql: ${TABLE}.Emisor ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
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

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
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

  dimension: id_movimiento {
    type: number
    sql: ${TABLE}.IdMovimiento ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension_group: trimestre {
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
    sql: ${TABLE}.Trimestre ;;
  }

  dimension: trimestre_q {
    type: string
    sql: ${TABLE}.TrimestreQ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
