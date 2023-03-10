view: catalogo_tipo_transaccion {
  sql_table_name: broxelco_rdg.CatalogoTipoTransaccion ;;

  dimension: categoria_transaccion {
    type: string
    sql: ${TABLE}.CategoriaTransaccion ;;
  }

  dimension: codigo_transaccional {
    type: number
    sql: ${TABLE}.CodigoTransaccional ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TipoTransaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
