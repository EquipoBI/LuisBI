view: log_login_bi {
  sql_table_name: recursos.LogLoginBI ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: conteo_conexiones {
    type: number
    sql: ${TABLE}.ConteoConexiones ;;
  }

  dimension_group: fecha_primer_login {
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
    sql: ${TABLE}.FechaPrimerLogin ;;
  }

  dimension_group: fecha_ultimo_login {
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
    sql: ${TABLE}.FechaUltimoLogin ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: plataforma {
    type: string
    sql: ${TABLE}.Plataforma ;;
  }

  dimension: sistema_operativo {
    type: string
    sql: ${TABLE}.SistemaOperativo ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
