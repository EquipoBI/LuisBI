view: transferencias {
  sql_table_name: broxelco_rdg.Transferencias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.Clabe ;;
  }

  dimension: clave_rastreo {
    type: string
    sql: ${TABLE}.ClaveRastreo ;;
  }

  dimension: concepto_pago {
    type: string
    sql: ${TABLE}.ConceptoPago ;;
  }

  dimension: cuenta_ordenante {
    type: string
    sql: ${TABLE}.CuentaOrdenante ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
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

  dimension: id_disposicion {
    type: number
    sql: ${TABLE}.IdDisposicion ;;
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

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: num_envio {
    type: number
    sql: ${TABLE}.NumEnvio ;;
  }

  dimension: referencia_numerica {
    type: number
    sql: ${TABLE}.ReferenciaNumerica ;;
  }

  dimension: referencia_pago {
    type: string
    sql: ${TABLE}.ReferenciaPago ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.RFC ;;
  }

  dimension: rfc_curp_ordenante {
    type: string
    sql: ${TABLE}.RfcCurpOrdenante ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
