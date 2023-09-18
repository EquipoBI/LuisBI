
view: pruebas_sociales {
  derived_table: {
    sql: Select *
      From `mgcp-10078073-bxl-bi-snd.BIPlata.ProgramasSociales` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: fecha {
    type: date
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: mes_txt {
    type: string
    sql: ${TABLE}.Mes_txt ;;
  }

  dimension: nombre_de_medidas {
    type: string
    sql: ${TABLE}.Nombre_de_medidas ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: email_contacto {
    type: string
    sql: ${TABLE}.email_contacto ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  dimension: ventas {
    type: number
    sql: ${TABLE}.ventas ;;
  }

  dimension: devoluciones {
    type: number
    sql: ${TABLE}.devoluciones ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: importe_ventas {
    type: number
    sql: ${TABLE}.importe_ventas ;;
  }

  dimension: importe_descuento {
    type: number
    sql: ${TABLE}.importe_descuento ;;
  }

  dimension: transacciones {
    type: number
    sql: ${TABLE}.transacciones ;;
  }

  dimension: estado_fiscal {
    type: string
    sql: ${TABLE}.Estado_Fiscal ;;
  }

  dimension: estado_comercial {
    type: string
    sql: ${TABLE}.Estado_Comercial ;;
  }

  dimension: municipio_comercial {
    type: string
    sql: ${TABLE}.Municipio_Comercial ;;
  }

  set: detail {
    fields: [
        comercio,
  fecha,
  mes_txt,
  nombre_de_medidas,
  razon_social,
  rfc,
  email_contacto,
  usuario,
  ventas,
  devoluciones,
  iva,
  importe_ventas,
  importe_descuento,
  transacciones,
  estado_fiscal,
  estado_comercial,
  municipio_comercial
    ]
  }
}
