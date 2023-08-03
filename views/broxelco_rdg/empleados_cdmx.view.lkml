view: empleados_cdmx {
  sql_table_name: broxelco_rdg.EmpleadosCDMX ;;

  dimension: ao_nac {
    type: number
    sql: ${TABLE}."A�O NAC" ;;
  }

  dimension: apellido_1 {
    type: string
    sql: ${TABLE}.APELLIDO_1 ;;
  }

  dimension: apellido_2 {
    type: string
    sql: ${TABLE}.APELLIDO_2 ;;
  }

  dimension: curp {
    type: string
    sql: ${TABLE}.CURP ;;
  }

  dimension: dom_zp {
    type: string
    sql: ${TABLE}."DOM ZP" ;;
  }

  dimension: domicilio {
    type: string
    sql: ${TABLE}.DOMICILIO ;;
  }

  dimension: dup {
    type: number
    sql: ${TABLE}.DUP ;;
  }

  dimension: edad {
    type: number
    sql: ${TABLE}.EDAD ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.GENERO ;;
  }

  dimension: id_empleado {
    type: number
    sql: ${TABLE}.ID_EMPLEADO ;;
  }

  dimension: id_estado_civil {
    type: string
    sql: ${TABLE}.ID_ESTADO_CIVIL ;;
  }

  dimension: id_legal {
    type: string
    sql: ${TABLE}.ID_LEGAL ;;
  }

  dimension: id_zona_pagadora {
    type: number
    sql: ${TABLE}.ID_ZONA_PAGADORA ;;
  }

  dimension: n_cabeza_sector {
    type: string
    sql: ${TABLE}.N_CABEZA_SECTOR ;;
  }

  dimension: nom_completo {
    type: string
    sql: ${TABLE}."NOM COMPLETO" ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
  }

  dimension: rango_edad {
    type: string
    sql: ${TABLE}."RANGO EDAD" ;;
  }

  dimension: rfc_10 {
    type: string
    sql: ${TABLE}."rfc 10" ;;
  }

  dimension: sector {
    type: number
    sql: ${TABLE}.SECTOR ;;
  }

  dimension: sujeto_por_edad {
    type: string
    sql: ${TABLE}."SUJETO POR EDAD?" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
