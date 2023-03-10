view: cuentas_inactivas_baja {
  sql_table_name: broxelco_rdg.CuentasInactivasBaja ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: activada_ccpara_cargo {
    type: number
    sql: ${TABLE}.ActivadaCCParaCargo ;;
  }

  dimension: cargo_por_manteminiento {
    type: number
    sql: ${TABLE}.CargoPorManteminiento ;;
  }

  dimension: cargo_por_reposicion_nip {
    type: number
    sql: ${TABLE}.CargoPorReposicionNIP ;;
  }

  dimension: cargo_por_reposicion_tarj {
    type: number
    sql: ${TABLE}.CargoPorReposicionTarj ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: compra_en_comercio {
    type: number
    sql: ${TABLE}.CompraEnComercio ;;
  }

  dimension: envio {
    type: number
    sql: ${TABLE}.Envio ;;
  }

  dimension_group: fecha_envio {
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
    sql: ${TABLE}.FechaEnvio ;;
  }

  dimension_group: fecha_personalizacion {
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
    sql: ${TABLE}.FechaPersonalizacion ;;
  }

  dimension_group: fecha_primer_mov {
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
    sql: ${TABLE}.FechaPrimerMov ;;
  }

  dimension_group: fecha_reporte_cc {
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
    sql: ${TABLE}.FechaReporteCC ;;
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

  dimension: genera_plastico {
    type: number
    sql: ${TABLE}.GeneraPlastico ;;
  }

  dimension: guia {
    type: string
    sql: ${TABLE}.GUIA ;;
  }

  dimension: id_solicitud_cargo {
    type: number
    sql: ${TABLE}.IdSolicitudCargo ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: personalizacion {
    type: number
    sql: ${TABLE}.Personalizacion ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: reporte_por_cc {
    type: number
    sql: ${TABLE}.ReportePorCC ;;
  }

  dimension: saldo20151118 {
    type: number
    sql: ${TABLE}.Saldo20151118 ;;
  }

  dimension: saldo20151120 {
    type: number
    sql: ${TABLE}.Saldo20151120 ;;
  }

  dimension: saldo20151209 {
    type: number
    sql: ${TABLE}.Saldo20151209 ;;
  }

  dimension: usuario_envio {
    type: string
    sql: ${TABLE}.UsuarioEnvio ;;
  }

  dimension: usuario_personalizacion {
    type: string
    sql: ${TABLE}.UsuarioPersonalizacion ;;
  }

  dimension: usuario_reporte_cc {
    type: string
    sql: ${TABLE}.UsuarioReporteCC ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
