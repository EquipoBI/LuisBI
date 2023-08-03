view: log_comandos_despensa {
  sql_table_name: broxelco_rdg.LogComandosDespensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: comando_busqueda {
    type: string
    sql: ${TABLE}.comandoBusqueda ;;
  }

  dimension: comando_update {
    type: string
    sql: ${TABLE}.comandoUpdate ;;
  }

  dimension: comando_update_estatus {
    type: string
    sql: ${TABLE}.comandoUpdateEstatus ;;
  }

  dimension: id_despensa {
    type: string
    sql: ${TABLE}.idDespensa ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
