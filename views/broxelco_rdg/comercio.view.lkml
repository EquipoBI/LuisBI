view: comercio {
  sql_table_name: broxelco_rdg.Comercio ;;

  dimension: acepto_terminos {
    type: string
    sql: ${TABLE}.acepto_terminos ;;
  }

  dimension: actividad_registrada_sat {
    type: string
    sql: ${TABLE}.actividadRegistradaSAT ;;
  }

  dimension: activo_estado_financiero {
    type: number
    sql: ${TABLE}.activoEstadoFinanciero ;;
  }

  dimension: acumulado_ventas_ytd {
    type: number
    sql: ${TABLE}.acumuladoVentasYTD ;;
  }

  dimension: amonestacion_mejoravit1 {
    type: number
    sql: ${TABLE}.AmonestacionMejoravit1 ;;
  }

  dimension: amonestaciones {
    type: number
    sql: ${TABLE}.amonestaciones ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: branch_identifier {
    type: number
    sql: ${TABLE}.BranchIdentifier ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: calle_comercial {
    type: string
    sql: ${TABLE}.calleComercial ;;
  }

  dimension: calle_sat {
    type: string
    sql: ${TABLE}.calleSAT ;;
  }

  dimension: capital_estado_financiero {
    type: number
    sql: ${TABLE}.capitalEstadoFinanciero ;;
  }

  dimension: categoria {
    type: number
    sql: ${TABLE}.Categoria ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: codigo_comercio {
    type: string
    sql: ${TABLE}.CodigoComercio ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: codigo_postal_sat {
    type: string
    sql: ${TABLE}.codigoPostalSAT ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: colonia_comercial {
    type: string
    sql: ${TABLE}.coloniaComercial ;;
  }

  dimension: colonia_sat {
    type: string
    sql: ${TABLE}.coloniaSAT ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: commc {
    type: string
    sql: ${TABLE}.commc ;;
  }

  dimension: cp_comercial {
    type: string
    sql: ${TABLE}.cpComercial ;;
  }

  dimension: delegacion {
    type: string
    sql: ${TABLE}.delegacion ;;
  }

  dimension: delegacion_comercial {
    type: string
    sql: ${TABLE}.delegacionComercial ;;
  }

  dimension: delegacion_sat {
    type: string
    sql: ${TABLE}.delegacionSAT ;;
  }

  dimension: dependencia_permiso_operacion {
    type: string
    sql: ${TABLE}.dependenciaPermisoOperacion ;;
  }

  dimension: docs_completos {
    type: string
    sql: ${TABLE}.docs_completos ;;
  }

  dimension: email_avisos {
    type: string
    sql: ${TABLE}.email_avisos ;;
  }

  dimension: email_contacto {
    type: string
    sql: ${TABLE}.email_contacto ;;
  }

  dimension: entra_en_liquidacion {
    type: string
    sql: ${TABLE}.EntraEnLiquidacion ;;
  }

  dimension: es_pvpublico {
    type: string
    sql: ${TABLE}.esPVpublico ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estado_comercial {
    type: string
    sql: ${TABLE}.estadoComercial ;;
  }

  dimension: estado_constitucion_legal {
    type: string
    sql: ${TABLE}.estadoConstitucionLegal ;;
  }

  dimension: estado_sat {
    type: string
    sql: ${TABLE}.estadoSAT ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }

  dimension_group: fecha_acepto_terminos {
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
    sql: ${TABLE}.fecha_acepto_terminos ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_amonestacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_amonestacion ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_cert_of {
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
    sql: ${TABLE}.fechaCertOF ;;
  }

  dimension_group: fecha_constitucion_legal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaConstitucionLegal ;;
  }

  dimension_group: fecha_emision_permiso_operacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaEmisionPermisoOperacion ;;
  }

  dimension_group: fecha_hora_creacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaHoraCreacion ;;
  }

  dimension_group: fecha_hora_modificacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaHoraModificacion ;;
  }

  dimension_group: fecha_inicio_operaciones_sat {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaInicioOperacionesSAT ;;
  }

  dimension_group: fecha_sancion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_sancion ;;
  }

  dimension: ha_sido_liquidado_merchant {
    type: string
    sql: ${TABLE}.haSidoLiquidadoMerchant ;;
  }

  dimension: horario_atencion_domingos {
    type: string
    sql: ${TABLE}.horarioAtencionDomingos ;;
  }

  dimension: horario_atencion_semana {
    type: string
    sql: ${TABLE}.horarioAtencionSemana ;;
  }

  dimension: horario_responsable_entre_semana {
    type: string
    sql: ${TABLE}.horarioResponsableEntreSemana ;;
  }

  dimension: id_comercio {
    type: number
    sql: ${TABLE}.idComercio ;;
  }

  dimension: importe_default {
    type: number
    sql: ${TABLE}.ImporteDefault ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: matriz {
    type: string
    sql: ${TABLE}.Matriz ;;
  }

  dimension: no_acta_constitutiva_legal {
    type: string
    sql: ${TABLE}.NoActaConstitutivaLegal ;;
  }

  dimension: no_escritura_legal {
    type: string
    sql: ${TABLE}.noEscrituraLegal ;;
  }

  dimension: no_exterior_comercial {
    type: string
    sql: ${TABLE}.noExteriorComercial ;;
  }

  dimension: no_exterior_sat {
    type: string
    sql: ${TABLE}.noExteriorSAT ;;
  }

  dimension: no_foja_legal {
    type: string
    sql: ${TABLE}.noFojaLegal ;;
  }

  dimension: no_interior_comercial {
    type: string
    sql: ${TABLE}.noInteriorComercial ;;
  }

  dimension: no_interior_sat {
    type: string
    sql: ${TABLE}.noInteriorSAT ;;
  }

  dimension: no_notaria_legal {
    type: string
    sql: ${TABLE}.noNotariaLegal ;;
  }

  dimension: no_volumen_acta_constitutiva_legal {
    type: string
    sql: ${TABLE}.noVolumenActaConstitutivaLegal ;;
  }

  dimension: nombre_afacturar {
    type: string
    sql: ${TABLE}.NombreAFacturar ;;
  }

  dimension: nombre_banco1_financieros {
    type: string
    sql: ${TABLE}.nombreBanco1Financieros ;;
  }

  dimension: nombre_banco2_financieros {
    type: string
    sql: ${TABLE}.nombreBanco2Financieros ;;
  }

  dimension: nombre_banco3_financieros {
    type: string
    sql: ${TABLE}.nombreBanco3Financieros ;;
  }

  dimension: nombre_cliente1 {
    type: string
    sql: ${TABLE}.nombreCliente1 ;;
  }

  dimension: nombre_cliente2 {
    type: string
    sql: ${TABLE}.nombreCliente2 ;;
  }

  dimension: nombre_cliente3 {
    type: string
    sql: ${TABLE}.nombreCliente3 ;;
  }

  dimension: nombre_proveedor1 {
    type: string
    sql: ${TABLE}.nombreProveedor1 ;;
  }

  dimension: nombre_proveedor2 {
    type: string
    sql: ${TABLE}.nombreProveedor2 ;;
  }

  dimension: nombre_proveedor3 {
    type: string
    sql: ${TABLE}.nombreProveedor3 ;;
  }

  dimension: npmbre_representante_pagos {
    type: string
    sql: ${TABLE}.npmbreRepresentantePagos ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: num_cuenta_broxel {
    type: string
    sql: ${TABLE}.numCuentaBroxel ;;
  }

  dimension: num_cuenta_clabe {
    type: string
    sql: ${TABLE}.num_cuenta_clabe ;;
  }

  dimension: num_exterior {
    type: string
    sql: ${TABLE}.numExterior ;;
  }

  dimension: num_interior {
    type: string
    sql: ${TABLE}.numInterior ;;
  }

  dimension: num_sucursal {
    type: string
    sql: ${TABLE}.num_sucursal ;;
  }

  dimension: numero_sucursales {
    type: number
    sql: ${TABLE}.numeroSucursales ;;
  }

  dimension: objeto_sociedad_legal {
    type: string
    sql: ${TABLE}.objetoSociedadLegal ;;
  }

  dimension: of_apellido_materno_rep_pagos {
    type: string
    sql: ${TABLE}.ofApellidoMaternoRepPagos ;;
  }

  dimension: of_apellido_paterno_rep_pagos {
    type: string
    sql: ${TABLE}.ofApellidoPaternoRepPagos ;;
  }

  dimension: of_horarios_apertura_d {
    type: string
    sql: ${TABLE}.ofHorariosAperturaD ;;
  }

  dimension: of_horarios_apertura_lv {
    type: string
    sql: ${TABLE}.ofHorariosAperturaLV ;;
  }

  dimension: of_horarios_apertura_s {
    type: string
    sql: ${TABLE}.ofHorariosAperturaS ;;
  }

  dimension: of_horarios_cierre_d {
    type: string
    sql: ${TABLE}.ofHorariosCierreD ;;
  }

  dimension: of_horarios_cierre_lv {
    type: string
    sql: ${TABLE}.ofHorariosCierreLV ;;
  }

  dimension: of_horarios_cierre_s {
    type: string
    sql: ${TABLE}.ofHorariosCierreS ;;
  }

  dimension: of_nombre_representante_pagos1 {
    type: string
    sql: ${TABLE}.ofNombreRepresentantePagos1 ;;
  }

  dimension: of_num_empleados_sucursal {
    type: number
    sql: ${TABLE}.ofNumEmpleadosSucursal ;;
  }

  dimension: of_num_empleados_totales {
    type: number
    sql: ${TABLE}.ofNumEmpleadosTotales ;;
  }

  dimension: of_operacion_d {
    type: string
    sql: ${TABLE}.ofOperacionD ;;
  }

  dimension: of_operacion_lv {
    type: string
    sql: ${TABLE}.ofOperacionLV ;;
  }

  dimension: of_operacion_s {
    type: string
    sql: ${TABLE}.ofOperacionS ;;
  }

  dimension: ofnombre_socios {
    type: string
    sql: ${TABLE}.ofnombreSocios ;;
  }

  dimension: ofnumero_sucursales {
    type: number
    sql: ${TABLE}.ofnumeroSucursales ;;
  }

  dimension: oftipo_sucursal {
    type: string
    sql: ${TABLE}.oftipoSucursal ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: pasivo_estado_financiero {
    type: number
    sql: ${TABLE}.pasivoEstadoFinanciero ;;
  }

  dimension: personalidad {
    type: string
    sql: ${TABLE}.personalidad ;;
  }

  dimension: promedio_mensual_compra_proveedor1 {
    type: number
    sql: ${TABLE}.promedioMensualCompraProveedor1 ;;
  }

  dimension: promedio_mensual_compra_proveedor2 {
    type: number
    sql: ${TABLE}.promedioMensualCompraProveedor2 ;;
  }

  dimension: promedio_mensual_compra_proveedor3 {
    type: number
    sql: ${TABLE}.PromedioMensualCompraProveedor3 ;;
  }

  dimension: promedio_ventas_mensual_cliente1 {
    type: number
    sql: ${TABLE}.promedioVentasMensualCliente1 ;;
  }

  dimension: promedio_ventas_mensual_cliente2 {
    type: number
    sql: ${TABLE}.promedioVentasMensualCliente2 ;;
  }

  dimension: promedio_ventas_mensual_cliente3 {
    type: number
    sql: ${TABLE}.promedioVentasMensualCliente3 ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }

  dimension: representante_proveedor1 {
    type: string
    sql: ${TABLE}.representanteProveedor1 ;;
  }

  dimension: representante_proveedor2 {
    type: string
    sql: ${TABLE}.representanteProveedor2 ;;
  }

  dimension: representante_proveedor3 {
    type: string
    sql: ${TABLE}.representanteProveedor3 ;;
  }

  dimension: responsable_entre_semana {
    type: string
    sql: ${TABLE}.responsableEntreSemana ;;
  }

  dimension: retiene_ivacom {
    type: string
    sql: ${TABLE}.retieneIVACom ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: sanciones {
    type: number
    sql: ${TABLE}.sanciones ;;
  }

  dimension: sanciones_mejoravit1 {
    type: number
    sql: ${TABLE}.SancionesMejoravit1 ;;
  }

  dimension: st_certificacion_of {
    type: number
    sql: ${TABLE}.stCertificacionOF ;;
  }

  dimension: st_certificacion_sira {
    type: string
    sql: ${TABLE}.stCertificacionSira ;;
  }

  dimension: st_dato {
    type: number
    sql: ${TABLE}.stDato ;;
  }

  dimension: st_expediente_mc {
    type: string
    sql: ${TABLE}.stExpedienteMC ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: telefono_proveedor1 {
    type: string
    sql: ${TABLE}.telefonoProveedor1 ;;
  }

  dimension: telefono_proveedor2 {
    type: string
    sql: ${TABLE}.telefonoProveedor2 ;;
  }

  dimension: telefono_proveedor3 {
    type: string
    sql: ${TABLE}.telefonoProveedor3 ;;
  }

  dimension: tiene_sucursales {
    type: string
    sql: ${TABLE}.tieneSucursales ;;
  }

  dimension: tiene_usuario_fintech {
    type: string
    sql: ${TABLE}.tieneUsuarioFintech ;;
  }

  dimension: tiene_usuario_online {
    type: string
    sql: ${TABLE}.tieneUsuarioOnline ;;
  }

  dimension: tipo_sociedad_legal {
    type: string
    sql: ${TABLE}.tipoSociedadLegal ;;
  }

  dimension: total_empreados {
    type: number
    sql: ${TABLE}.totalEmpreados ;;
  }

  dimension: usuario_acepta_terminos {
    type: string
    sql: ${TABLE}.usuario_acepta_terminos ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.UsuarioModificacion ;;
  }

  dimension: validacion_sira {
    type: number
    sql: ${TABLE}.validacionSira ;;
  }

  dimension: ventas_anuales_py {
    type: number
    sql: ${TABLE}.ventasAnualesPY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
