view: comercios_mc {
  sql_table_name: broxelco_rdg.ComerciosMC ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: id_giro {
    type: string
    sql: ${TABLE}.IdGiro ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.Municipio ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
