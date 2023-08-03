view: complemento_maquila {
  sql_table_name: broxelco_rdg.ComplementoMaquila ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: estado_civil {
    type: string
    sql: ${TABLE}.EstadoCivil ;;
  }

  dimension: fecha_de_nacimiento {
    type: string
    sql: ${TABLE}.FechaDeNacimiento ;;
  }

  dimension: hijos {
    type: string
    sql: ${TABLE}.Hijos ;;
  }

  dimension: ocupacion {
    type: string
    sql: ${TABLE}.Ocupacion ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
