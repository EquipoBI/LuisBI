view: devoluciones_internas {
  sql_table_name: broxelco_rdg.devolucionesInternas ;;
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

  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
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
