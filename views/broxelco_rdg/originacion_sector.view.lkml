view: originacion_sector {
  sql_table_name: broxelco_rdg.originacionSector ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: id_industria {
    type: number
    sql: ${TABLE}.idIndustria ;;
  }

  dimension: sector_giro {
    type: string
    sql: ${TABLE}.sectorGiro ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
