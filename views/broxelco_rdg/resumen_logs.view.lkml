view: resumen_logs {
  sql_table_name: broxelco_rdg.ResumenLogs ;;

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.IdUsuarioOnlineBroxel ;;
  }

  dimension_group: primer_log {
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
    sql: ${TABLE}.PrimerLog ;;
  }

  dimension_group: ultima_actualizacin {
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
    sql: ${TABLE}."UltimaActualizaci�n" ;;
  }

  dimension: ultima_plataforma {
    type: string
    sql: ${TABLE}.UltimaPlataforma ;;
  }

  dimension_group: ultimo_log {
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
    sql: ${TABLE}.UltimoLog ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
