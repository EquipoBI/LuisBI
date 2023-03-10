view: soporte_gm_origen {
  sql_table_name: broxelco_rdg.Soporte_GM_Origen ;;
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

  dimension: nombre_origen {
    type: string
    sql: ${TABLE}.NombreOrigen ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
