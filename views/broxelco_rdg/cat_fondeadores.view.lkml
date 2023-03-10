view: cat_fondeadores {
  sql_table_name: broxelco_rdg.catFondeadores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email_contacto {
    type: string
    sql: ${TABLE}.emailContacto ;;
  }

  dimension: id_ftpsite {
    type: number
    sql: ${TABLE}.idFTPSite ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: ruta_local {
    type: string
    sql: ${TABLE}.rutaLocal ;;
  }

  dimension: ruta_remota {
    type: string
    sql: ${TABLE}.rutaRemota ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
