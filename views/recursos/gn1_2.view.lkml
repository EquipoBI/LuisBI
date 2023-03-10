view: gn1_2 {
  sql_table_name: recursos.gn1_2 ;;

  dimension: broxel_control {
    type: string
    sql: ${TABLE}.BroxelControl ;;
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

  dimension_group: fecha_actualizacion {
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
    sql: ${TABLE}.FechaActualizacion ;;
  }

  dimension_group: fecha_creacion_cliente {
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
    sql: ${TABLE}.FechaCreacionCliente ;;
  }

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
  }

  dimension: grupo_cliente {
    type: string
    sql: ${TABLE}.GrupoCliente ;;
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

  dimension: id_nivel_de_cuenta {
    type: number
    sql: ${TABLE}.IdNivelDeCuenta ;;
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

  dimension: procesador {
    type: string
    sql: ${TABLE}.Procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
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
