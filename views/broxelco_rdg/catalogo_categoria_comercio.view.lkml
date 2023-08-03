view: catalogo_categoria_comercio {
  sql_table_name: broxelco_rdg.CatalogoCategoriaComercio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: fecha_fin {
    type: string
    sql: ${TABLE}.FechaFin ;;
  }

  dimension: fecha_inicio {
    type: string
    sql: ${TABLE}.FechaInicio ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
