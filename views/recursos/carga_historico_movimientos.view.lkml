view: carga_historico_movimientos {
  sql_table_name: recursos.CargaHistoricoMovimientos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: autorizacion {
    type: string
    sql: ${TABLE}.Autorizacion ;;
  }

  dimension: broxel_control {
    type: string
    sql: ${TABLE}.BroxelControl ;;
  }

  dimension: categoria_payments {
    type: string
    sql: ${TABLE}.CategoriaPayments ;;
  }

  dimension: codigo_estatus {
    type: string
    sql: ${TABLE}.CodigoEstatus ;;
  }

  dimension: codigo_transaccion {
    type: number
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

  dimension: descripcion_estatus {
    type: string
    sql: ${TABLE}.DescripcionEstatus ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.Fecha ;;
  }

  dimension_group: fecha_pago {
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
    sql: ${TABLE}.FechaPago ;;
  }

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
  }

  dimension: hora {
    type: string
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

  dimension: mcc {
    type: number
    sql: ${TABLE}.MCC ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }

  dimension: monto_intercambio {
    type: number
    sql: ${TABLE}.MontoIntercambio ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
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

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TipoTransaccion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
