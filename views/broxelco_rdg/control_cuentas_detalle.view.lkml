view: control_cuentas_detalle {
  sql_table_name: broxelco_rdg.ControlCuentasDetalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }

  dimension: accion_consecutivo {
    type: number
    sql: ${TABLE}.accionConsecutivo ;;
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: folio_cargo {
    type: string
    sql: ${TABLE}.folioCargo ;;
  }

  dimension: id_comercio_control_cuenta {
    type: number
    sql: ${TABLE}.idComercioControlCuenta ;;
  }

  dimension: id_control_cuenta {
    type: number
    sql: ${TABLE}.idControlCuenta ;;
  }

  dimension: id_estatus_cargo {
    type: number
    sql: ${TABLE}.IdEstatusCargo ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
