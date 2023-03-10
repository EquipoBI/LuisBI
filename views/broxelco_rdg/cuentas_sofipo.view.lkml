view: cuentas_sofipo {
  sql_table_name: broxelco_rdg.CuentasSofipo ;;
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

  dimension: nivel {
    type: number
    sql: ${TABLE}.Nivel ;;
  }

  dimension: numcuenta {
    type: string
    sql: ${TABLE}.Numcuenta ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
