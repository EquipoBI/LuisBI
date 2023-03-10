view: alsea_diciembre {
  sql_table_name: broxelco_rdg.AlseaDiciembre ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clave_pemex {
    type: string
    sql: ${TABLE}.clavePEMEX ;;
  }

  dimension: cvesiic {
    type: string
    sql: ${TABLE}.CVESIIC ;;
  }

  dimension_group: fclear {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FClear ;;
  }

  dimension: ieps {
    type: number
    sql: ${TABLE}.ieps ;;
  }

  dimension: imp_total_vta {
    type: number
    sql: ${TABLE}.ImpTotalVta ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: precio_combustible {
    type: number
    sql: ${TABLE}.precioCombustible ;;
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
