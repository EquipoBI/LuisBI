view: recepcion_transferencias {
  sql_table_name: broxelco_rdg.RecepcionTransferencias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: causa_devolucion {
    type: number
    sql: ${TABLE}.CausaDevolucion ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.Clabe ;;
  }

  dimension: clave_pago {
    type: number
    sql: ${TABLE}.ClavePago ;;
  }

  dimension: clave_rastreo {
    type: string
    sql: ${TABLE}.ClaveRastreo ;;
  }

  dimension: concepto_pago {
    type: string
    sql: ${TABLE}.ConceptoPago ;;
  }

  dimension: concepto_pago2 {
    type: string
    sql: ${TABLE}.ConceptoPago2 ;;
  }

  dimension: cuenta_ordenante {
    type: string
    sql: ${TABLE}.CuentaOrdenante ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension_group: fecha_operacion {
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
    sql: ${TABLE}.FechaOperacion ;;
  }

  dimension: id_stp {
    type: string
    sql: ${TABLE}.idSTP ;;
  }

  dimension: institucion_ordenante {
    type: number
    sql: ${TABLE}.InstitucionOrdenante ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: nombre_beneficiario {
    type: string
    sql: ${TABLE}.NombreBeneficiario ;;
  }

  dimension: nombre_beneficiario2 {
    type: string
    sql: ${TABLE}.NombreBeneficiario2 ;;
  }

  dimension: nombre_ordenante {
    type: string
    sql: ${TABLE}.NombreOrdenante ;;
  }

  dimension: referencia_cobranza {
    type: string
    sql: ${TABLE}.ReferenciaCobranza ;;
  }

  dimension: referencia_numerica {
    type: number
    sql: ${TABLE}.ReferenciaNumerica ;;
  }

  dimension: rfc_curp_beneficiario {
    type: string
    sql: ${TABLE}.RfcCurpBeneficiario ;;
  }

  dimension: rfc_curp_ordenante {
    type: string
    sql: ${TABLE}.RfcCurpOrdenante ;;
  }

  dimension: tipo_cuenta_beneficiario {
    type: number
    sql: ${TABLE}.TipoCuentaBeneficiario ;;
  }

  dimension: tipo_cuenta_ordenante {
    type: number
    sql: ${TABLE}.TipoCuentaOrdenante ;;
  }

  dimension: tipo_operacion {
    type: number
    sql: ${TABLE}.TipoOperacion ;;
  }

  dimension: tipo_pago {
    type: number
    sql: ${TABLE}.TipoPago ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
