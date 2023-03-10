view: movimiento {
  sql_table_name: broxelco_rdg.Movimiento ;;

  dimension: activo_lote {
    type: number
    sql: ${TABLE}.ActivoLote ;;
  }

  dimension: autorizado {
    type: number
    sql: ${TABLE}.Autorizado ;;
  }

  dimension: cvc {
    type: string
    sql: ${TABLE}.CVC ;;
  }

  dimension: devolucion {
    type: string
    sql: ${TABLE}.devolucion ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: exp_01 {
    type: string
    sql: ${TABLE}.exp_01 ;;
  }

  dimension: exp_02 {
    type: string
    sql: ${TABLE}.exp_02 ;;
  }

  dimension: fecha_expira {
    type: string
    sql: ${TABLE}.FechaExpira ;;
  }

  dimension_group: fecha_hora_creacion {
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
    sql: ${TABLE}.FechaHoraCreacion ;;
  }

  dimension_group: fecha_hora_modificacion {
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
    sql: ${TABLE}.FechaHoraModificacion ;;
  }

  dimension: id_comercio {
    type: number
    sql: ${TABLE}.idComercio ;;
  }

  dimension: id_lote {
    type: number
    sql: ${TABLE}.idLote ;;
  }

  dimension: id_movimiento {
    type: number
    sql: ${TABLE}.idMovimiento ;;
  }

  dimension: id_programa {
    type: number
    sql: ${TABLE}.idPrograma ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: ip_movimiento {
    type: string
    sql: ${TABLE}.IpMovimiento ;;
  }

  dimension: mensaje_error {
    type: string
    sql: ${TABLE}.MensajeError ;;
  }

  dimension: mensaje_respuesta {
    type: string
    sql: ${TABLE}.MensajeRespuesta ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: no_autorizacion {
    type: string
    sql: ${TABLE}.NoAutorizacion ;;
  }

  dimension: no_referencia {
    type: string
    sql: ${TABLE}.NoReferencia ;;
  }

  dimension: nombre_referencia {
    type: string
    sql: ${TABLE}.NombreReferencia ;;
  }

  dimension: nombre_tarjeta {
    type: string
    sql: ${TABLE}.NombreTarjeta ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: programa {
    type: number
    sql: ${TABLE}.Programa ;;
  }

  dimension: reg_control {
    type: number
    sql: ${TABLE}.RegControl ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tipo_telefono {
    type: string
    sql: ${TABLE}.tipo_telefono ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.UsuarioModificacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
