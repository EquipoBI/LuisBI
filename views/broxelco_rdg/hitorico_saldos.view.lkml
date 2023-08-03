view: hitorico_saldos {
  sql_table_name: broxelco_rdg.Hitorico_Saldos ;;

  dimension: cod_agencia {
    type: string
    sql: ${TABLE}.COD_AGENCIA ;;
  }

  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.COD_CLIENTE ;;
  }

  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.COD_EMPRESA ;;
  }

  dimension: cod_moneda {
    type: string
    sql: ${TABLE}.COD_MONEDA ;;
  }

  dimension: cod_producto {
    type: string
    sql: ${TABLE}.COD_PRODUCTO ;;
  }

  dimension: cod_sistema {
    type: string
    sql: ${TABLE}.COD_SISTEMA ;;
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.FECHA ;;
  }

  dimension: nom_chequera {
    type: string
    sql: ${TABLE}.NOM_CHEQUERA ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NUM_CUENTA ;;
  }

  dimension: sal_disponible {
    type: number
    sql: ${TABLE}.SAL_DISPONIBLE ;;
  }

  dimension: sal_promedio {
    type: number
    sql: ${TABLE}.SAL_PROMEDIO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
