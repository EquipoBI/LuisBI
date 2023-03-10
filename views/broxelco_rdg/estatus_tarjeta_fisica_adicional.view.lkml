view: estatus_tarjeta_fisica_adicional {
  sql_table_name: broxelco_rdg.EstatusTarjetaFisicaAdicional ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
