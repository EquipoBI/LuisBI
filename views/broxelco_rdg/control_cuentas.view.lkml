view: control_cuentas {
  sql_table_name: broxelco_rdg.ControlCuentas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dias_inactividad {
    type: number
    sql: ${TABLE}.diasInactividad ;;
  }

  dimension: dispersiones_cobradas {
    type: number
    sql: ${TABLE}.dispersionesCobradas ;;
  }

  dimension: dispersiones_ejecutadas {
    type: number
    sql: ${TABLE}.dispersionesEjecutadas ;;
  }

  dimension: dispersiones_por_cobrar {
    type: number
    sql: ${TABLE}.dispersionesPorCobrar ;;
  }

  dimension_group: fecha_ultima_modificacion {
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
    sql: ${TABLE}.fechaUltimaModificacion ;;
  }

  dimension: genera_solicitud {
    type: number
    sql: ${TABLE}.generaSolicitud ;;
  }

  dimension: inactividades_cobradas {
    type: number
    sql: ${TABLE}.inactividadesCobradas ;;
  }

  dimension: llamadas_cobradas {
    type: number
    sql: ${TABLE}.llamadasCobradas ;;
  }

  dimension: llamadas_por_cobrar {
    type: number
    sql: ${TABLE}.llamadasPorCobrar ;;
  }

  dimension: llamadas_realizadas {
    type: number
    sql: ${TABLE}.llamadasRealizadas ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.numCuenta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
