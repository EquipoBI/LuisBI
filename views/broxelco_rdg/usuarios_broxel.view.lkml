view: usuarios_broxel {
  sql_table_name: broxelco_rdg.usuarios_broxel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.extension ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: old_pass {
    type: string
    sql: ${TABLE}.oldPass ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
