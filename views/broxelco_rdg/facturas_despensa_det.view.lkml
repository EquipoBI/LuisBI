view: facturas_despensa_det {
  sql_table_name: broxelco_rdg.facturasDespensaDet ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: area_de_trabajo {
    type: string
    sql: ${TABLE}.areaDeTrabajo ;;
  }

  dimension: curp {
    type: string
    sql: ${TABLE}.curp ;;
  }

  dimension: facturar {
    type: number
    sql: ${TABLE}.facturar ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha ;;
  }

  dimension: id_facturas_despensa {
    type: number
    sql: ${TABLE}.idFacturasDespensa ;;
  }

  dimension: identificador {
    type: string
    sql: ${TABLE}.identificador ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: num_seguridad_social {
    type: string
    sql: ${TABLE}.numSeguridadSocial ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
