view: auditorias_categorias_productos {
  sql_table_name: broxelco_rdg.AuditoriasCategoriasProductos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: id_auditoria {
    type: number
    sql: ${TABLE}.IdAuditoria ;;
  }

  dimension_group: marca_temporal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MarcaTemporal ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
