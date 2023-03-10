view: movs_auditoria {
  sql_table_name: broxelco_rdg.movs_auditoria ;;

  dimension: activo_lote {
    type: number
    sql: ${TABLE}.ActivoLote ;;
  }

  dimension: anio_expiracion {
    type: string
    sql: ${TABLE}.AnioExpiracion ;;
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
    sql: ${TABLE}.Devolucion ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
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

  dimension: id_cat_dominio {
    type: number
    sql: ${TABLE}.IdCatDominio ;;
  }

  dimension: id_comercio {
    type: number
    sql: ${TABLE}.IdComercio ;;
  }

  dimension: id_lote {
    type: number
    sql: ${TABLE}.IdLote ;;
  }

  dimension: id_movimientos {
    type: number
    sql: ${TABLE}.IdMovimientos ;;
  }

  dimension: id_programa {
    type: number
    sql: ${TABLE}.IdPrograma ;;
  }

  dimension: id_relacion_cacusuarios {
    type: number
    sql: ${TABLE}.IdRelacionCACUsuarios ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.IdUsuario ;;
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

  dimension: mes_expiracion {
    type: string
    sql: ${TABLE}.MesExpiracion ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: nombre_referencia {
    type: string
    sql: ${TABLE}.NombreReferencia ;;
  }

  dimension: nombre_tarjeta {
    type: string
    sql: ${TABLE}.NombreTarjeta ;;
  }

  dimension: numero_autorizacion {
    type: string
    sql: ${TABLE}.NumeroAutorizacion ;;
  }

  dimension: numero_cuenta {
    type: string
    sql: ${TABLE}.NumeroCuenta ;;
  }

  dimension: numero_movimiento {
    type: number
    sql: ${TABLE}.NumeroMovimiento ;;
  }

  dimension: numero_referencia {
    type: string
    sql: ${TABLE}.NumeroReferencia ;;
  }

  dimension: reg_control {
    type: number
    sql: ${TABLE}.RegControl ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  dimension: tipo_telefono {
    type: string
    sql: ${TABLE}.TipoTelefono ;;
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
