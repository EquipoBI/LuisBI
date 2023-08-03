view: pagos_internos {
  sql_table_name: broxelco_rdg.pagosInternos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: antes {
    type: number
    sql: ${TABLE}.antes ;;
  }

  dimension: antes_anul {
    type: number
    sql: ${TABLE}.antesAnul ;;
  }

  dimension: bloquear_cuenta {
    type: number
    sql: ${TABLE}.bloquearCuenta ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: cod_aut_anul {
    type: string
    sql: ${TABLE}.codAutAnul ;;
  }

  dimension: cod_resp_anul {
    type: string
    sql: ${TABLE}.codRespAnul ;;
  }

  dimension: codigo_autorizacion {
    type: string
    sql: ${TABLE}.codigoAutorizacion ;;
  }

  dimension: codigo_respuesta {
    type: string
    sql: ${TABLE}.codigoRespuesta ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: cvc {
    type: string
    sql: ${TABLE}.cvc ;;
  }

  dimension: despues {
    type: number
    sql: ${TABLE}.despues ;;
  }

  dimension: despues_anul {
    type: number
    sql: ${TABLE}.despuesAnul ;;
  }

  dimension: fecha_expiracion {
    type: string
    sql: ${TABLE}.fechaExpiracion ;;
  }

  dimension: forzar_pago {
    type: number
    sql: ${TABLE}.ForzarPago ;;
  }

  dimension: id_anul {
    type: string
    sql: ${TABLE}.idAnul ;;
  }

  dimension: id_solicitud {
    type: string
    sql: ${TABLE}.idSolicitud ;;
  }

  dimension: idmov {
    type: string
    sql: ${TABLE}.idmov ;;
  }

  dimension: pago {
    type: number
    sql: ${TABLE}.pago ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.tarjeta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
