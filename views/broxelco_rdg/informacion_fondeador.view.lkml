view: informacion_fondeador {
  sql_table_name: broxelco_rdg.InformacionFondeador ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cuotas_vencidas {
    type: number
    sql: ${TABLE}.Cuotas_Vencidas ;;
  }

  dimension: ejecutivo {
    type: string
    sql: ${TABLE}.Ejecutivo ;;
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.Fecha ;;
  }

  dimension_group: fecha_desembolsado {
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
    sql: ${TABLE}.Fecha_Desembolsado ;;
  }

  dimension_group: fecha_proximo_pago {
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
    sql: ${TABLE}.Fecha_Proximo_Pago ;;
  }

  dimension_group: fecha_ultimo_pago {
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
    sql: ${TABLE}.Fecha_Ultimo_Pago ;;
  }

  dimension: ingreso_x_cargos_comisiones {
    type: number
    sql: ${TABLE}.Ingreso_x_CargosComisiones ;;
  }

  dimension: ingreso_x_intereses {
    type: number
    sql: ${TABLE}.Ingreso_x_Intereses ;;
  }

  dimension: ingreso_x_mora {
    type: number
    sql: ${TABLE}.Ingreso_x_Mora ;;
  }

  dimension: interes_vencido {
    type: number
    sql: ${TABLE}.Interes_Vencido ;;
  }

  dimension: mon_cuota {
    type: number
    sql: ${TABLE}.Mon_Cuota ;;
  }

  dimension: moratorio_pendiente {
    type: number
    sql: ${TABLE}.Moratorio_Pendiente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: num_cliente {
    type: string
    sql: ${TABLE}.Num_Cliente ;;
  }

  dimension: num_operacion {
    type: string
    sql: ${TABLE}.Num_Operacion ;;
  }

  dimension: origen_fondos {
    type: string
    sql: ${TABLE}.Origen_Fondos ;;
  }

  dimension: periodicidad_pago {
    type: string
    sql: ${TABLE}.Periodicidad_Pago ;;
  }

  dimension: plan_inversion {
    type: string
    sql: ${TABLE}.Plan_Inversion ;;
  }

  dimension: plazo_meses {
    type: number
    sql: ${TABLE}.Plazo_Meses ;;
  }

  dimension: primer_apellido {
    type: string
    sql: ${TABLE}.Primer_Apellido ;;
  }

  dimension: principal_vencido {
    type: number
    sql: ${TABLE}.Principal_Vencido ;;
  }

  dimension: segundo_apellido {
    type: string
    sql: ${TABLE}.Segundo_Apellido ;;
  }

  dimension: tasa_interes {
    type: number
    sql: ${TABLE}.Tasa_Interes ;;
  }

  dimension: tasa_mora {
    type: number
    sql: ${TABLE}.TASA_MORA ;;
  }

  dimension: tipo_credito {
    type: string
    sql: ${TABLE}.Tipo_Credito ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
