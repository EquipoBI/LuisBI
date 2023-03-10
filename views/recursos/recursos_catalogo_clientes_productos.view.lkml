view: recursos_catalogo_clientes_productos {
  sql_table_name: recursos.CatalogoClientesProductos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.CLABE ;;
  }

  dimension: clasificacion {
    type: string
    sql: ${TABLE}.Clasificacion ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: clave_grupo_cliente {
    type: string
    sql: ${TABLE}.ClaveGrupoCliente ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.CodigoProducto ;;
  }

  dimension: cohorte {
    type: string
    sql: ${TABLE}.Cohorte ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.FechaCreacion ;;
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NombreCliente ;;
  }

  dimension: nombre_grupo_cliente {
    type: string
    sql: ${TABLE}.NombreGrupoCliente ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: razon_social_cliente {
    type: string
    sql: ${TABLE}.RazonSocialCliente ;;
  }

  dimension: razon_social_grupo_cliente {
    type: string
    sql: ${TABLE}.RazonSocialGrupoCliente ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
