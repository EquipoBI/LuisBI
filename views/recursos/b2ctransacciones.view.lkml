view: b2ctransacciones {
  sql_table_name: recursos.b2ctransacciones ;;

  dimension: broxel_control {
    type: string
    sql: ${TABLE}.BroxelControl ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: categoria_payments {
    type: string
    sql: ${TABLE}.CategoriaPayments ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: codigo_transaccion {
    type: string
    sql: ${TABLE}.CodigoTransaccion ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
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

  dimension_group: fecha_registro {
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
    sql: ${TABLE}.FechaRegistro ;;
  }

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
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

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
  }

  dimension: mcc {
    type: number
    sql: ${TABLE}.MCC ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: producto_mov {
    type: string
    sql: ${TABLE}.producto_mov ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  dimension: razon_social_com {
    type: string
    sql: ${TABLE}.RazonSocial_com ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TipoTransaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
