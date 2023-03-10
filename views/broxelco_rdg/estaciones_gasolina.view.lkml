view: estaciones_gasolina {
  sql_table_name: broxelco_rdg.EstacionesGasolina ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: id_estacion {
    type: string
    sql: ${TABLE}.IdEstacion ;;
  }

  dimension: precio_diesel {
    type: number
    sql: ${TABLE}.precioDiesel ;;
  }

  dimension: precio_magna {
    type: number
    sql: ${TABLE}.precioMagna ;;
  }

  dimension: precio_premium {
    type: number
    sql: ${TABLE}.precioPremium ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.RFC ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
