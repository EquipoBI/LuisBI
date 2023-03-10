view: comisiones_b1010 {
  sql_table_name: broxelco_rdg.ComisionesB1010 ;;
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

  dimension: codigo_comision {
    type: string
    sql: ${TABLE}.CodigoComision ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.IVA ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
