view: soporte_gm_usuarios_asigna {
  sql_table_name: broxelco_rdg.Soporte_GM_UsuariosAsigna ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
