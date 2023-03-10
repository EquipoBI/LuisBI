view: broxelco_rdg_myo_users {
  sql_table_name: broxelco_rdg.myo_users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: access_failed_count {
    type: number
    sql: ${TABLE}.AccessFailedCount ;;
  }

  dimension: acepta_terminos {
    type: number
    sql: ${TABLE}.AceptaTerminos ;;
  }

  dimension: activa_cuenta_hv {
    type: number
    sql: ${TABLE}.ActivaCuentaHV ;;
  }

  dimension: activa_otp {
    type: string
    sql: ${TABLE}.activaOTP ;;
  }

  dimension_group: birth {
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
    sql: ${TABLE}.BirthDate ;;
  }

  dimension: broxel_user_id {
    type: number
    sql: ${TABLE}.BroxelUserId ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: cliente_broxel {
    type: string
    sql: ${TABLE}.ClienteBroxel ;;
  }

  dimension: code_employee {
    type: string
    sql: ${TABLE}.CodeEmployee ;;
  }

  dimension: colony {
    type: string
    sql: ${TABLE}.Colony ;;
  }

  dimension: confirmation_code {
    type: string
    sql: ${TABLE}.ConfirmationCode ;;
  }

  dimension: curp_rfc_actualizados {
    type: number
    sql: ${TABLE}.CurpRfcActualizados ;;
  }

  dimension: del_town {
    type: string
    sql: ${TABLE}.DelTown ;;
  }

  dimension: domicile {
    type: string
    sql: ${TABLE}.Domicile ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_confirmed {
    type: number
    sql: ${TABLE}.EmailConfirmed ;;
  }

  dimension: es_persona_fisica {
    type: number
    sql: ${TABLE}.EsPersonaFisica ;;
  }

  dimension: estate {
    type: string
    sql: ${TABLE}.Estate ;;
  }

  dimension_group: fecha_acepta_terminos {
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
    sql: ${TABLE}.FechaAceptaTerminos ;;
  }

  dimension: folder_hash {
    type: string
    sql: ${TABLE}.FolderHash ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: has_facebook {
    type: number
    sql: ${TABLE}.HasFacebook ;;
  }

  dimension: has_google {
    type: number
    sql: ${TABLE}.HasGoogle ;;
  }

  dimension: has_linked_in {
    type: number
    sql: ${TABLE}.HasLinkedIn ;;
  }

  dimension: has_live {
    type: number
    sql: ${TABLE}.HasLive ;;
  }

  dimension: has_twitter {
    type: string
    sql: ${TABLE}.HasTwitter ;;
  }

  dimension: has_yahoo {
    type: number
    sql: ${TABLE}.HasYahoo ;;
  }

  dimension: id_city {
    type: string
    sql: ${TABLE}.IdCity ;;
  }

  dimension: id_colony {
    type: string
    sql: ${TABLE}.IdColony ;;
  }

  dimension: id_del_town {
    type: string
    sql: ${TABLE}.IdDelTown ;;
  }

  dimension: id_estate {
    type: string
    sql: ${TABLE}.IdEstate ;;
  }

  dimension: id_nacionality {
    type: string
    sql: ${TABLE}.IdNacionality ;;
  }

  dimension: is_recommended {
    type: number
    sql: ${TABLE}.IsRecommended ;;
  }

  dimension: last_name_father {
    type: string
    sql: ${TABLE}.LastNameFather ;;
  }

  dimension: last_name_mother {
    type: string
    sql: ${TABLE}.LastNameMother ;;
  }

  dimension: lockout_enabled {
    type: number
    sql: ${TABLE}.LockoutEnabled ;;
  }

  dimension_group: lockout_end_date_utc {
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
    sql: ${TABLE}.LockoutEndDateUtc ;;
  }

  dimension: myoscore {
    type: number
    sql: ${TABLE}.MYOScore ;;
  }

  dimension: myosfico_component {
    type: number
    sql: ${TABLE}.MYOSFicoComponent ;;
  }

  dimension: myoshistory_component {
    type: number
    sql: ${TABLE}.MYOSHistoryComponent ;;
  }

  dimension: myosreferences_component {
    type: number
    sql: ${TABLE}.MYOSReferencesComponent ;;
  }

  dimension: myossocial_component {
    type: number
    sql: ${TABLE}.MYOSSocialComponent ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nivel_usuario {
    type: number
    sql: ${TABLE}.NivelUsuario ;;
  }

  dimension: nss {
    type: string
    sql: ${TABLE}.Nss ;;
  }

  dimension: num_ext {
    type: string
    sql: ${TABLE}.NumExt ;;
  }

  dimension: num_int {
    type: string
    sql: ${TABLE}.NumInt ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: pais_registro {
    type: number
    sql: ${TABLE}.PaisRegistro ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.PasswordHash ;;
  }

  dimension: password_reset_hash {
    type: string
    sql: ${TABLE}.PasswordResetHash ;;
  }

  dimension: phone_confirmation_code {
    type: string
    sql: ${TABLE}.PhoneConfirmationCode ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }

  dimension: phone_number_confirmed {
    type: number
    sql: ${TABLE}.PhoneNumberConfirmed ;;
  }

  dimension: pic_confirm {
    type: number
    sql: ${TABLE}.PicConfirm ;;
  }

  dimension: pic_profile {
    type: string
    sql: ${TABLE}.PicProfile ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: proceso_completo {
    type: number
    sql: ${TABLE}.ProcesoCompleto ;;
  }

  dimension: register_status {
    type: number
    sql: ${TABLE}.RegisterStatus ;;
  }

  dimension_group: registration {
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
    sql: ${TABLE}.RegistrationDate ;;
  }

  dimension: safid {
    type: string
    sql: ${TABLE}.SAFId ;;
  }

  dimension: second_name {
    type: string
    sql: ${TABLE}.SecondName ;;
  }

  dimension: security_stamp {
    type: string
    sql: ${TABLE}.SecurityStamp ;;
  }

  dimension: sesion_unica {
    type: number
    sql: ${TABLE}.SesionUnica ;;
  }

  dimension: share_hash {
    type: string
    sql: ${TABLE}.ShareHash ;;
  }

  dimension: two_factor_enabled {
    type: number
    sql: ${TABLE}.TwoFactorEnabled ;;
  }

  dimension: universal_id {
    type: string
    sql: ${TABLE}.UniversalId ;;
  }

  dimension: user_image {
    type: string
    sql: ${TABLE}.UserImage ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, user_name, second_name]
  }
}
