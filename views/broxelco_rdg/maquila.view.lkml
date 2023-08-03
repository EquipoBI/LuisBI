view: maquila {
  sql_table_name: broxelco_rdg.maquila ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: 4ta_linea {
    type: string
    sql: ${TABLE}."4ta_linea" ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.CLABE ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.clave_cliente ;;
  }

  dimension: cliente_bx {
    type: string
    sql: ${TABLE}.cliente_bx ;;
  }

  dimension: cuenta_madre {
    type: string
    sql: ${TABLE}.cuenta_madre ;;
  }

  dimension: curp {
    type: string
    sql: ${TABLE}.CURP ;;
  }

  dimension: dcclave_cliente {
    type: string
    sql: ${TABLE}.DCClaveCliente ;;
  }

  dimension: dcconsec_cliente {
    type: string
    sql: ${TABLE}.DCConsecCliente ;;
  }

  dimension: disponible {
    type: number
    sql: ${TABLE}.disponible ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension_group: fecha_de_nacimiento {
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
    sql: ${TABLE}.FechaDeNacimiento ;;
  }

  dimension_group: fecha_disponible {
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
    sql: ${TABLE}.fecha_disponible ;;
  }

  dimension_group: fecha_ultima_modificacion {
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
    sql: ${TABLE}.fecha_ultima_modificacion ;;
  }

  dimension_group: fecha_ultimo_movimiento {
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
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }

  dimension: fondeo {
    type: string
    sql: ${TABLE}.Fondeo ;;
  }

  dimension: grupo_cuenta {
    type: string
    sql: ${TABLE}.grupo_cuenta ;;
  }

  dimension: id_nivel_de_cuenta {
    type: number
    sql: ${TABLE}.IdNivelDeCuenta ;;
  }

  dimension: id_tipo_notificacion_sms {
    type: number
    sql: ${TABLE}.IdTipoNotificacionSMS ;;
  }

  dimension: imp_adelantos {
    type: number
    sql: ${TABLE}.imp_adelantos ;;
  }

  dimension_group: import {
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
    sql: ${TABLE}.import ;;
  }

  dimension: limite_compras {
    type: number
    sql: ${TABLE}.limite_compras ;;
  }

  dimension: limite_credito {
    type: number
    sql: ${TABLE}.limite_credito ;;
  }

  dimension: maquila {
    type: string
    sql: ${TABLE}.maquila ;;
  }

  dimension: meses_inactiva {
    type: number
    sql: ${TABLE}.MesesInactiva ;;
  }

  dimension: nombre_completo {
    type: string
    sql: ${TABLE}.NombreCompleto ;;
  }

  dimension: nombre_tarjethabiente {
    type: string
    sql: ${TABLE}.nombre_tarjethabiente ;;
  }

  dimension: nombre_titular {
    type: string
    sql: ${TABLE}.nombre_titular ;;
  }

  dimension: nominada {
    type: number
    sql: ${TABLE}.nominada ;;
  }

  dimension: nrotarjeta {
    type: string
    sql: ${TABLE}."nro-tarjeta" ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: procesador {
    type: number
    sql: ${TABLE}.procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }

  dimension: referencia_cliente {
    type: string
    sql: ${TABLE}.referenciaCliente ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.RFC ;;
  }

  dimension: saldo_restante {
    type: number
    sql: ${TABLE}.saldo_restante ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  dimension: total_movimientos {
    type: number
    sql: ${TABLE}.total_movimientos ;;
  }

  dimension: usuario_web {
    type: number
    sql: ${TABLE}.usuario_web ;;
  }

  dimension: validado_stp {
    type: number
    sql: ${TABLE}.validadoSTP ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
