view: originacion_tarjetahabientes {
  sql_table_name: broxelco_rdg.originacionTarjetahabientes ;;

  dimension: acta_razon_social {
    type: number
    sql: ${TABLE}.actaRazonSocial ;;
  }

  dimension: acta_representante {
    type: number
    sql: ${TABLE}.actaRepresentante ;;
  }

  dimension: apellido_materno {
    type: string
    sql: ${TABLE}.apellidoMaterno ;;
  }

  dimension: apellido_paterno {
    type: string
    sql: ${TABLE}.apellidoPaterno ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: captura_a {
    type: string
    sql: ${TABLE}.capturaA ;;
  }

  dimension: captura_b {
    type: string
    sql: ${TABLE}.capturaB ;;
  }

  dimension: cliente_broxel {
    type: string
    sql: ${TABLE}.clienteBroxel ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigoPostal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: confirma_cuenta_broxel {
    type: string
    sql: ${TABLE}.confirmaCuentaBroxel ;;
  }

  dimension: consecutivo {
    type: string
    sql: ${TABLE}.consecutivo ;;
  }

  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correoElectronico ;;
  }

  dimension: cuenta_confirma {
    type: string
    sql: ${TABLE}.cuentaConfirma ;;
  }

  dimension: delegacion {
    type: string
    sql: ${TABLE}.delegacion ;;
  }

  dimension: delegacion_elaboracion {
    type: string
    sql: ${TABLE}.delegacionElaboracion ;;
  }

  dimension: destino_del_recurso {
    type: string
    sql: ${TABLE}.destinoDelRecurso ;;
  }

  dimension: doc_acta {
    type: string
    sql: ${TABLE}.docActa ;;
  }

  dimension: doc_comprobante_dom {
    type: string
    sql: ${TABLE}.docComprobanteDom ;;
  }

  dimension: doc_factura {
    type: string
    sql: ${TABLE}.docFactura ;;
  }

  dimension: doc_factura_adeudos {
    type: string
    sql: ${TABLE}.docFacturaAdeudos ;;
  }

  dimension: doc_ine {
    type: string
    sql: ${TABLE}.docINE ;;
  }

  dimension: doc_rfc {
    type: string
    sql: ${TABLE}.docRfc ;;
  }

  dimension_group: entrega_fecha {
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
    sql: ${TABLE}.entregaFecha ;;
  }

  dimension: entrega_usuario {
    type: string
    sql: ${TABLE}.entregaUsuario ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estado_elaboraciion {
    type: string
    sql: ${TABLE}.estadoElaboraciion ;;
  }

  dimension: estatus_broxel {
    type: string
    sql: ${TABLE}.estatusBroxel ;;
  }

  dimension: estratificacion_empresa {
    type: string
    sql: ${TABLE}.estratificacionEmpresa ;;
  }

  dimension_group: fecha_elaboracion {
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
    sql: ${TABLE}.fechaElaboracion ;;
  }

  dimension: fotos_adicionales {
    type: string
    sql: ${TABLE}.fotosAdicionales ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }

  dimension: giro_actividad {
    type: string
    sql: ${TABLE}.giroActividad ;;
  }

  dimension: id_nombre {
    type: number
    sql: ${TABLE}.idNombre ;;
  }

  dimension: id_originacion {
    type: number
    sql: ${TABLE}.idOriginacion ;;
  }

  dimension: industria {
    type: string
    sql: ${TABLE}.industria ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension_group: mesa_control_fecha {
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
    sql: ${TABLE}.mesaControlFecha ;;
  }

  dimension: mesa_control_observaciones {
    type: string
    sql: ${TABLE}.mesaControlObservaciones ;;
  }

  dimension: mesa_control_resultado {
    type: string
    sql: ${TABLE}.mesaControlResultado ;;
  }

  dimension: mesa_control_tipo {
    type: string
    sql: ${TABLE}.mesaControlTipo ;;
  }

  dimension: mesa_control_usuario {
    type: string
    sql: ${TABLE}.mesaControlUsuario ;;
  }

  dimension: mesa_trabajo {
    type: string
    sql: ${TABLE}.mesaTrabajo ;;
  }

  dimension: monto_prestamo_letra {
    type: string
    sql: ${TABLE}.montoPrestamoLetra ;;
  }

  dimension: monto_prestamo_numero {
    type: string
    sql: ${TABLE}.montoPrestamoNumero ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: municipio_elaboracion {
    type: string
    sql: ${TABLE}.municipioElaboracion ;;
  }

  dimension: nom_fenomeno {
    type: string
    sql: ${TABLE}.nomFenomeno ;;
  }

  dimension: nom_programa {
    type: string
    sql: ${TABLE}.nomPrograma ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.numCuenta ;;
  }

  dimension: num_exterior {
    type: string
    sql: ${TABLE}.numExterior ;;
  }

  dimension: num_interior {
    type: string
    sql: ${TABLE}.numInterior ;;
  }

  dimension: num_tarjeta {
    type: string
    sql: ${TABLE}.numTarjeta ;;
  }

  dimension: numero_empleados {
    type: number
    sql: ${TABLE}.numeroEmpleados ;;
  }

  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numeroIdentificacion ;;
  }

  dimension: numero_ine {
    type: string
    sql: ${TABLE}.numeroINE ;;
  }

  dimension: otp_confirma {
    type: string
    sql: ${TABLE}.otpConfirma ;;
  }

  dimension: otp_cuenta {
    type: string
    sql: ${TABLE}.otpCuenta ;;
  }

  dimension: padron_estado {
    type: string
    sql: ${TABLE}.padronEstado ;;
  }

  dimension: padron_munisipio_mtrabajo {
    type: string
    sql: ${TABLE}.padronMunisipioMtrabajo ;;
  }

  dimension: padron_programa {
    type: string
    sql: ${TABLE}.padronPrograma ;;
  }

  dimension: pagos_pendientes_servicios {
    type: string
    sql: ${TABLE}.pagosPendientesServicios ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: rfc_coincide {
    type: number
    sql: ${TABLE}.rfcCoincide ;;
  }

  dimension: rfc_estatus {
    type: number
    sql: ${TABLE}.rfcEstatus ;;
  }

  dimension: rfc_giro {
    type: number
    sql: ${TABLE}.rfcGiro ;;
  }

  dimension: rfc_nombre {
    type: number
    sql: ${TABLE}.rfcNombre ;;
  }

  dimension: situacion_negocio {
    type: string
    sql: ${TABLE}.situacionNegocio ;;
  }

  dimension: status_originacion {
    type: string
    sql: ${TABLE}.statusOriginacion ;;
  }

  dimension: telefono_movil {
    type: string
    sql: ${TABLE}.telefonoMovil ;;
  }

  dimension: telefono_oficina {
    type: string
    sql: ${TABLE}.telefonoOficina ;;
  }

  dimension: telefono_otro {
    type: string
    sql: ${TABLE}.telefonoOtro ;;
  }

  dimension: tipo_apoyo {
    type: string
    sql: ${TABLE}.tipoApoyo ;;
  }

  dimension: tipo_asentamiento {
    type: string
    sql: ${TABLE}.tipoAsentamiento ;;
  }

  dimension: tipo_vialidad {
    type: string
    sql: ${TABLE}.tipoVialidad ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
