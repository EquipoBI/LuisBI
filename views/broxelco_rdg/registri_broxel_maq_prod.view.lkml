view: registri_broxel_maq_prod {
  sql_table_name: broxelco_rdg.registri_broxel_maq_prod ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: cod_pto_cuota {
    type: string
    sql: ${TABLE}.CodPtoCuota ;;
  }

  dimension: disponible {
    type: number
    sql: ${TABLE}.disponible ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: fecha_de_registro {
    type: string
    sql: ${TABLE}.fecha_de_registro ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.filler ;;
  }

  dimension: folio_de_registro {
    type: string
    sql: ${TABLE}.folio_de_registro ;;
  }

  dimension: id_de_registro {
    type: number
    sql: ${TABLE}.id_de_registro ;;
  }

  dimension: imp_disponible {
    type: string
    sql: ${TABLE}.imp_disponible ;;
  }

  dimension: nruc_o {
    type: string
    sql: ${TABLE}.NrucO ;;
  }

  dimension: subprograma {
    type: string
    sql: ${TABLE}.subprograma ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: transacciones {
    type: string
    sql: ${TABLE}.transacciones ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
