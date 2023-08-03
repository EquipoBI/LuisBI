view: catalogo_mcc {
  sql_table_name: recursos.CatalogoMCC ;;

  dimension: broxel {
    type: number
    sql: ${TABLE}.Broxel ;;
  }

  dimension: comercial {
    type: string
    sql: ${TABLE}.Comercial ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: familia {
    type: string
    sql: ${TABLE}.Familia ;;
  }

  dimension: mcc {
    type: number
    sql: ${TABLE}.MCC ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
