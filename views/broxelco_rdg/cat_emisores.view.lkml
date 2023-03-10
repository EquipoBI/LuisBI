view: cat_emisores {
  sql_table_name: broxelco_rdg.CatEmisores ;;

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: correo_facturas {
    type: string
    sql: ${TABLE}.correoFacturas ;;
  }

  dimension: id_emisor {
    type: number
    sql: ${TABLE}.idEmisor ;;
  }

  dimension: nombre_stp {
    type: string
    sql: ${TABLE}.nombreSTP ;;
  }

  dimension: password_correo {
    type: string
    sql: ${TABLE}.passwordCorreo ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
