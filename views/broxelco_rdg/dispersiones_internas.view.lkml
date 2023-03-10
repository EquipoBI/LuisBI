view: dispersiones_internas {
  sql_table_name: broxelco_rdg.dispersionesInternas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: antes_anul_atm {
    type: number
    sql: ${TABLE}.antesAnulATM ;;
  }

  dimension: antes_anul_pos {
    type: number
    sql: ${TABLE}.antesAnulPOS ;;
  }

  dimension: antes_atm {
    type: number
    sql: ${TABLE}.antesATM ;;
  }

  dimension: antes_pos {
    type: number
    sql: ${TABLE}.antesPOS ;;
  }

  dimension: bloquear_cuenta {
    type: number
    sql: ${TABLE}.bloquearCuenta ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: cod_aut_anul_atm {
    type: string
    sql: ${TABLE}.codAutAnulATM ;;
  }

  dimension: cod_aut_anul_pos {
    type: string
    sql: ${TABLE}.codAutAnulPOS ;;
  }

  dimension: cod_resp_anul_atm {
    type: string
    sql: ${TABLE}.codRespAnulATM ;;
  }

  dimension: cod_resp_anul_pos {
    type: string
    sql: ${TABLE}.codRespAnulPOS ;;
  }

  dimension: codigo_autorizacion_atm {
    type: string
    sql: ${TABLE}.codigoAutorizacionATM ;;
  }

  dimension: codigo_autorizacion_pos {
    type: string
    sql: ${TABLE}.codigoAutorizacionPOS ;;
  }

  dimension: codigo_respuesta_atm {
    type: string
    sql: ${TABLE}.codigoRespuestaATM ;;
  }

  dimension: codigo_respuesta_pos {
    type: string
    sql: ${TABLE}.codigoRespuestaPOS ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: cvc {
    type: string
    sql: ${TABLE}.cvc ;;
  }

  dimension: despues_anul_atm {
    type: number
    sql: ${TABLE}.despuesAnulATM ;;
  }

  dimension: despues_anul_pos {
    type: number
    sql: ${TABLE}.despuesAnulPOS ;;
  }

  dimension: despues_atm {
    type: number
    sql: ${TABLE}.despuesATM ;;
  }

  dimension: despues_pos {
    type: number
    sql: ${TABLE}.despuesPOS ;;
  }

  dimension: fecha_expiracion {
    type: string
    sql: ${TABLE}.fechaExpiracion ;;
  }

  dimension: id_anul_atm {
    type: string
    sql: ${TABLE}.idAnulATM ;;
  }

  dimension: id_anul_pos {
    type: string
    sql: ${TABLE}.idAnulPOS ;;
  }

  dimension: id_solicitud {
    type: string
    sql: ${TABLE}.idSolicitud ;;
  }

  dimension: idmov_atm {
    type: string
    sql: ${TABLE}.idmovATM ;;
  }

  dimension: idmov_pos {
    type: string
    sql: ${TABLE}.idmovPOS ;;
  }

  dimension: incremento_atm {
    type: number
    sql: ${TABLE}.incrementoATM ;;
  }

  dimension: incremento_pos {
    type: number
    sql: ${TABLE}.incrementoPOS ;;
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
