view: movimientos_terminado2 {
  sql_table_name: broxelco_rdg.MovimientosTerminado2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: categoria_payments {
    type: string
    sql: ${TABLE}.CategoriaPayments ;;
  }

  dimension: clasificacion {
    type: string
    sql: ${TABLE}.Clasificacion ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: codigo_transaccion {
    type: number
    sql: ${TABLE}.CodigoTransaccion ;;
  }

  dimension: cohorte {
    type: string
    sql: ${TABLE}.Cohorte ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: comision {
    type: number
    sql: ${TABLE}.Comision ;;
  }

  dimension: comision_actualizada {
    type: number
    sql: ${TABLE}.ComisionActualizada ;;
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

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
  }

  dimension: id_programas {
    type: number
    sql: ${TABLE}.idProgramas ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }

  dimension: importe_descuento {
    type: number
    sql: ${TABLE}.importe_descuento ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
  }

  dimension: importe_ventas {
    type: number
    sql: ${TABLE}.importe_ventas ;;
  }

  dimension: monto_intercambio {
    type: number
    sql: ${TABLE}.MontoIntercambio ;;
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NombreCliente ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TipoTransaccion ;;
  }

  dimension: transacciones {
    type: number
    sql: ${TABLE}.transacciones ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
