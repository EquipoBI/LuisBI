view: dispositivos {
  sql_table_name: broxelco_rdg.dispositivos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: activo {
    type: number
    sql: ${TABLE}.Activo ;;
  }

  dimension: id_dispositivo {
    type: string
    sql: ${TABLE}.IdDispositivo ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.IdUsuarioOnlineBroxel ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
