view: grupos_comercios {
  sql_table_name: broxelco_rdg.gruposComercios ;;

  dimension: acepta_tycpara_todos_comercios {
    type: string
    sql: ${TABLE}.AceptaTYCParaTodosComercios ;;
  }

  dimension: clave_cliente_broxel {
    type: string
    sql: ${TABLE}.claveClienteBroxel ;;
  }

  dimension: email_representante {
    type: string
    sql: ${TABLE}.emailRepresentante ;;
  }

  dimension: id_grupo {
    type: number
    sql: ${TABLE}.idGrupo ;;
  }

  dimension: nombre_grupo {
    type: string
    sql: ${TABLE}.nombreGrupo ;;
  }

  dimension: num_cuenta_broxel {
    type: string
    sql: ${TABLE}.numCuentaBroxel ;;
  }

  dimension: representante_grupo {
    type: string
    sql: ${TABLE}.representanteGrupo ;;
  }

  dimension: telefono_representante {
    type: string
    sql: ${TABLE}.telefonoRepresentante ;;
  }

  dimension: tipo_telefono {
    type: string
    sql: ${TABLE}.tipoTelefono ;;
  }

  dimension: una_cuenta_por_grupo {
    type: number
    sql: ${TABLE}.unaCuentaPorGrupo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
