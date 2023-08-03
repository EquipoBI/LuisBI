view: pre_pay_studio_movements_v {
  sql_table_name: broxelpaymentsws.PrePayStudioMovements_v ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: authorization_code {
    type: string
    sql: ${TABLE}.AuthorizationCode ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension_group: clearing {
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
    sql: ${TABLE}.ClearingDate ;;
  }

  dimension: codmcc {
    type: string
    sql: ${TABLE}.Codmcc ;;
  }

  dimension_group: confirmation {
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
    sql: ${TABLE}.ConfirmationDate ;;
  }

  dimension: currency_code {
    type: number
    sql: ${TABLE}.CurrencyCode ;;
  }

  dimension: den_mov {
    type: string
    sql: ${TABLE}.DenMov ;;
  }

  dimension_group: end_date_pay_studio {
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
    sql: ${TABLE}.EndDatePayStudio ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: exchange_rate_dec {
    type: number
    sql: ${TABLE}.ExchangeRateDEC ;;
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

  dimension_group: fecha_insercion {
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
    sql: ${TABLE}.FechaInsercion ;;
  }

  dimension_group: fecha_liquidacion {
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
    sql: ${TABLE}.FechaLiquidacion ;;
  }

  dimension: fee_amount {
    type: string
    sql: ${TABLE}.FeeAmount ;;
  }

  dimension: id_merchant {
    type: number
    sql: ${TABLE}.IdMerchant ;;
  }

  dimension: id_transferencia {
    type: number
    sql: ${TABLE}.IdTransferencia ;;
  }

  dimension: imp_total {
    type: string
    sql: ${TABLE}.ImpTotal ;;
  }

  dimension: imp_total_dec {
    type: number
    sql: ${TABLE}.ImpTotalDEC ;;
  }

  dimension: importe_mxn {
    type: number
    sql: ${TABLE}.ImporteMXN ;;
  }

  dimension: is_for_liquidity {
    type: string
    sql: ${TABLE}.IsForLiquidity ;;
  }

  dimension: mask_card {
    type: string
    sql: ${TABLE}.MaskCard ;;
  }

  dimension: merchant_tax_id {
    type: string
    sql: ${TABLE}.MERCHANT_TAX_ID ;;
  }

  dimension: nombre_titular {
    type: string
    sql: ${TABLE}.nombre_titular ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.PAYMENT_CHANNEL ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD ;;
  }

  dimension_group: posting {
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: procesado {
    type: string
    sql: ${TABLE}.Procesado ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: r_merchant_address {
    type: string
    sql: ${TABLE}.R_MERCHANT_ADDRESS ;;
  }

  dimension: rrn {
    type: string
    sql: ${TABLE}.RRN ;;
  }

  dimension: tipo_reg {
    type: string
    sql: ${TABLE}.TipoReg ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
