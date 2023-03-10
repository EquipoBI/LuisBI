view: analisis_inactividad_bk {
  sql_table_name: broxelco_rdg.AnalisisInactividad_bk ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: bloque {
    type: string
    sql: ${TABLE}.Bloque ;;
  }

  dimension: cargos_aclaracion {
    type: number
    sql: ${TABLE}.CargosAclaracion ;;
  }

  dimension: cargos_manto {
    type: number
    sql: ${TABLE}.CargosManto ;;
  }

  dimension: cargos_nip {
    type: number
    sql: ${TABLE}.CargosNIP ;;
  }

  dimension: cargos_rep_tarjeta {
    type: number
    sql: ${TABLE}.CargosRepTarjeta ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: cuantos_cargos {
    type: number
    sql: ${TABLE}.CuantosCargos ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.EstadoOperativo ;;
  }

  dimension_group: fecha_saldo {
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
    sql: ${TABLE}.FechaSaldo ;;
  }

  dimension_group: fecha_ultimo_mov {
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
    sql: ${TABLE}.FechaUltimoMov ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: saldo_disponible {
    type: number
    sql: ${TABLE}.SaldoDisponible ;;
  }

  dimension: suma_aclaracion {
    type: number
    sql: ${TABLE}.SumaAclaracion ;;
  }

  dimension: suma_cargos {
    type: number
    sql: ${TABLE}.SumaCargos ;;
  }

  dimension: suma_manto {
    type: number
    sql: ${TABLE}.SumaManto ;;
  }

  dimension: suma_nip {
    type: number
    sql: ${TABLE}.SumaNIP ;;
  }

  dimension: suma_rep_tarjeta {
    type: number
    sql: ${TABLE}.SumaRepTarjeta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
