view: soporte_gm_tipo_usuarios {
  sql_table_name: broxelco_rdg.Soporte_GM_TipoUsuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension: tipo_usuario {
    type: string
    sql: ${TABLE}.TipoUsuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
