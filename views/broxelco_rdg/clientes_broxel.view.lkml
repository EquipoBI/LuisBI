view: clientes_broxel {
  sql_table_name: broxelco_rdg.ClientesBroxel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: a_materno_rep_legal {
    type: string
    sql: ${TABLE}.aMaternoRepLegal ;;
  }

  dimension: a_paterno_reg_legal {
    type: string
    sql: ${TABLE}.aPaternoRegLegal ;;
  }

  dimension: actividad_economica {
    type: number
    sql: ${TABLE}.actividadEconomica ;;
  }

  dimension: activo {
    type: string
    sql: ${TABLE}.Activo ;;
  }

  dimension: autoridad_emite_rep_legal {
    type: string
    sql: ${TABLE}.autoridadEmiteRepLegal ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: clabedestino {
    type: string
    sql: ${TABLE}.CLABEDestino ;;
  }

  dimension: clasificacion_ctes_broxel {
    type: number
    sql: ${TABLE}.ClasificacionCtesBroxel ;;
  }

  dimension: clasificacion_id {
    type: number
    sql: ${TABLE}.ClasificacionId ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: clave_cliente_web {
    type: string
    sql: ${TABLE}.ClaveClienteWeb ;;
  }

  dimension: clave_pais {
    type: string
    sql: ${TABLE}.clavePais ;;
  }

  dimension: cliente_individual {
    type: string
    sql: ${TABLE}.ClienteIndividual ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigoPostal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: comentarios_validacion {
    type: string
    sql: ${TABLE}.ComentariosValidacion ;;
  }

  dimension: correo_contacto {
    type: string
    sql: ${TABLE}.CorreoContacto ;;
  }

  dimension: curp_rep_legal {
    type: string
    sql: ${TABLE}.curpRepLegal ;;
  }

  dimension: emite_factura {
    type: string
    sql: ${TABLE}.EmiteFactura ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: estatus_validacion {
    type: number
    sql: ${TABLE}.EstatusValidacion ;;
  }

  dimension: fecha_constitucion {
    type: string
    sql: ${TABLE}.fechaConstitucion ;;
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

  dimension: fecha_nacimiento_rep_legal {
    type: string
    sql: ${TABLE}.fechaNacimientoRepLegal ;;
  }

  dimension: grupo_cliente {
    type: string
    sql: ${TABLE}.GrupoCliente ;;
  }

  dimension: id_colonia {
    type: number
    sql: ${TABLE}.idColonia ;;
  }

  dimension: id_estado {
    type: number
    sql: ${TABLE}.idEstado ;;
  }

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.idLocalidad ;;
  }

  dimension: id_municipio {
    type: number
    sql: ${TABLE}.idMunicipio ;;
  }

  dimension: id_pais {
    type: number
    sql: ${TABLE}.IdPais ;;
  }

  dimension: idcliente_entidad {
    type: number
    sql: ${TABLE}.IDClienteEntidad ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.Localidad ;;
  }

  dimension: municipio_delegacion {
    type: string
    sql: ${TABLE}.MunicipioDelegacion ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  dimension: nombre_rep_legal {
    type: string
    sql: ${TABLE}.nombreRepLegal ;;
  }

  dimension: num_ext {
    type: string
    sql: ${TABLE}.numExt ;;
  }

  dimension: num_identificacion_rep_legal {
    type: string
    sql: ${TABLE}.numIdentificacionRepLegal ;;
  }

  dimension: num_int {
    type: string
    sql: ${TABLE}.numInt ;;
  }

  dimension: pais_tel {
    type: string
    sql: ${TABLE}.paisTel ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }

  dimension: reporta_pld {
    type: string
    sql: ${TABLE}.ReportaPLD ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: rfc_rep_legal {
    type: string
    sql: ${TABLE}.rfcRepLegal ;;
  }

  dimension: status_migracion {
    type: number
    sql: ${TABLE}.statusMigracion ;;
  }

  dimension: tel {
    type: string
    sql: ${TABLE}.tel ;;
  }

  dimension: tipo_id_otro_rep_legal {
    type: string
    sql: ${TABLE}.tipoIdOtroRepLegal ;;
  }

  dimension: tipo_id_rep_legal {
    type: string
    sql: ${TABLE}.tipoIdRepLegal ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
