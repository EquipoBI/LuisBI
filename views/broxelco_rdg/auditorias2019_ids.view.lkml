view: auditorias2019_ids {
  sql_table_name: broxelco_rdg.Auditorias2019Ids ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
