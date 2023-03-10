view: cc_clientes_broxel {
  sql_table_name: broxelco_rdg.cc_clientes_broxel ;;

  dimension: apellido_materno {
    type: string
    sql: ${TABLE}.apellido_materno ;;
  }

  dimension: apellido_paterno {
    type: string
    sql: ${TABLE}.apellido_paterno ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: delegacion_municipio {
    type: string
    sql: ${TABLE}.delegacion_municipio ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: id_sys {
    type: number
    sql: ${TABLE}.id_sys ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: telefono_celular {
    type: string
    sql: ${TABLE}.telefono_celular ;;
  }

  dimension: telefono_oficina {
    type: string
    sql: ${TABLE}.telefono_oficina ;;
  }

  dimension: telefono_particular {
    type: string
    sql: ${TABLE}.telefono_particular ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
