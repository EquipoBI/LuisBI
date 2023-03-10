view: postal_code {
  sql_table_name: recursos.PostalCode ;;

  dimension: c_cp {
    type: string
    sql: ${TABLE}.c_CP ;;
  }

  dimension: c_cve_ciudad {
    type: string
    sql: ${TABLE}.c_cve_ciudad ;;
  }

  dimension: c_estado {
    type: string
    sql: ${TABLE}.c_estado ;;
  }

  dimension: c_mnpio {
    type: string
    sql: ${TABLE}.c_mnpio ;;
  }

  dimension: c_oficina {
    type: string
    sql: ${TABLE}.c_oficina ;;
  }

  dimension: c_tipo_asenta {
    type: string
    sql: ${TABLE}.c_tipo_asenta ;;
  }

  dimension: d_asenta {
    type: string
    sql: ${TABLE}.d_asenta ;;
  }

  dimension: d_ciudad {
    type: string
    sql: ${TABLE}.d_ciudad ;;
  }

  dimension: d_codigo {
    type: string
    sql: ${TABLE}.d_codigo ;;
  }

  dimension: d_cp {
    type: string
    sql: ${TABLE}.d_CP ;;
  }

  dimension: d_estado {
    type: string
    sql: ${TABLE}.d_estado ;;
  }

  dimension: d_mnpio {
    type: string
    sql: ${TABLE}.D_mnpio ;;
  }

  dimension: d_tipo_asenta {
    type: string
    sql: ${TABLE}.d_tipo_asenta ;;
  }

  dimension: d_zona {
    type: string
    sql: ${TABLE}.d_zona ;;
  }

  dimension: id_asenta_cpcons {
    type: string
    sql: ${TABLE}.id_asenta_cpcons ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
