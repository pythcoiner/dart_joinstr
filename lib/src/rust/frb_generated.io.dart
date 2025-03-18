// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.8.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/joinstr.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_AddressPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddressPtr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_CoinPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinPtr;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_CoinjoinResultPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResultPtr;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_ListCoinsResultPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResultPtr;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_ListPoolsResultPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResultPtr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_MnemonicPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonicPtr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_PeerConfigPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfigPtr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_PoolPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPoolPtr;

  @protected
  Address
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    dynamic raw,
  );

  @protected
  Coin
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    dynamic raw,
  );

  @protected
  CoinjoinResult
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    dynamic raw,
  );

  @protected
  ListCoinsResult
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    dynamic raw,
  );

  @protected
  ListPoolsResult
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    dynamic raw,
  );

  @protected
  Mnemonic
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    dynamic raw,
  );

  @protected
  PeerConfig
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    dynamic raw,
  );

  @protected
  Pool
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    dynamic raw,
  );

  @protected
  CoinjoinResult
  dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    dynamic raw,
  );

  @protected
  ListCoinsResult
  dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    dynamic raw,
  );

  @protected
  ListPoolsResult
  dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    dynamic raw,
  );

  @protected
  PeerConfig
  dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    dynamic raw,
  );

  @protected
  Coin
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    dynamic raw,
  );

  @protected
  CoinjoinResult
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    dynamic raw,
  );

  @protected
  ListCoinsResult
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    dynamic raw,
  );

  @protected
  ListPoolsResult
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    dynamic raw,
  );

  @protected
  PeerConfig
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    dynamic raw,
  );

  @protected
  Pool
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    dynamic raw,
  );

  @protected
  Address
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    dynamic raw,
  );

  @protected
  Coin
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    dynamic raw,
  );

  @protected
  CoinjoinResult
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    dynamic raw,
  );

  @protected
  ListCoinsResult
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    dynamic raw,
  );

  @protected
  ListPoolsResult
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    dynamic raw,
  );

  @protected
  Mnemonic
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    dynamic raw,
  );

  @protected
  PeerConfig
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    dynamic raw,
  );

  @protected
  Pool
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    dynamic raw,
  );

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  Address
  dco_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    dynamic raw,
  );

  @protected
  Mnemonic
  dco_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    dynamic raw,
  );

  @protected
  double dco_decode_box_autoadd_f_64(dynamic raw);

  @protected
  PoolConfig dco_decode_box_autoadd_pool_config(dynamic raw);

  @protected
  (int, int) dco_decode_box_autoadd_record_u_32_u_32(dynamic raw);

  @protected
  int dco_decode_box_autoadd_u_32(dynamic raw);

  @protected
  BigInt dco_decode_box_autoadd_u_64(dynamic raw);

  @protected
  BigInt dco_decode_box_autoadd_usize(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  List<Coin>
  dco_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    dynamic raw,
  );

  @protected
  List<Pool>
  dco_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    dynamic raw,
  );

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  Network dco_decode_network(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  Address?
  dco_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    dynamic raw,
  );

  @protected
  Mnemonic?
  dco_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    dynamic raw,
  );

  @protected
  double? dco_decode_opt_box_autoadd_f_64(dynamic raw);

  @protected
  int? dco_decode_opt_box_autoadd_u_32(dynamic raw);

  @protected
  BigInt? dco_decode_opt_box_autoadd_u_64(dynamic raw);

  @protected
  BigInt? dco_decode_opt_box_autoadd_usize(dynamic raw);

  @protected
  List<Coin>?
  dco_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    dynamic raw,
  );

  @protected
  List<Pool>?
  dco_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    dynamic raw,
  );

  @protected
  PoolConfig dco_decode_pool_config(dynamic raw);

  @protected
  (int, int) dco_decode_record_u_32_u_32(dynamic raw);

  @protected
  int dco_decode_u_16(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  Address
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    SseDeserializer deserializer,
  );

  @protected
  Coin
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    SseDeserializer deserializer,
  );

  @protected
  CoinjoinResult
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    SseDeserializer deserializer,
  );

  @protected
  ListCoinsResult
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    SseDeserializer deserializer,
  );

  @protected
  ListPoolsResult
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    SseDeserializer deserializer,
  );

  @protected
  Mnemonic
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    SseDeserializer deserializer,
  );

  @protected
  PeerConfig
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    SseDeserializer deserializer,
  );

  @protected
  Pool
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    SseDeserializer deserializer,
  );

  @protected
  CoinjoinResult
  sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    SseDeserializer deserializer,
  );

  @protected
  ListCoinsResult
  sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    SseDeserializer deserializer,
  );

  @protected
  ListPoolsResult
  sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    SseDeserializer deserializer,
  );

  @protected
  PeerConfig
  sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    SseDeserializer deserializer,
  );

  @protected
  Coin
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    SseDeserializer deserializer,
  );

  @protected
  CoinjoinResult
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    SseDeserializer deserializer,
  );

  @protected
  ListCoinsResult
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    SseDeserializer deserializer,
  );

  @protected
  ListPoolsResult
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    SseDeserializer deserializer,
  );

  @protected
  PeerConfig
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    SseDeserializer deserializer,
  );

  @protected
  Pool
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    SseDeserializer deserializer,
  );

  @protected
  Address
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    SseDeserializer deserializer,
  );

  @protected
  Coin
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    SseDeserializer deserializer,
  );

  @protected
  CoinjoinResult
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    SseDeserializer deserializer,
  );

  @protected
  ListCoinsResult
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    SseDeserializer deserializer,
  );

  @protected
  ListPoolsResult
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    SseDeserializer deserializer,
  );

  @protected
  Mnemonic
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    SseDeserializer deserializer,
  );

  @protected
  PeerConfig
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    SseDeserializer deserializer,
  );

  @protected
  Pool
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    SseDeserializer deserializer,
  );

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  Address
  sse_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    SseDeserializer deserializer,
  );

  @protected
  Mnemonic
  sse_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    SseDeserializer deserializer,
  );

  @protected
  double sse_decode_box_autoadd_f_64(SseDeserializer deserializer);

  @protected
  PoolConfig sse_decode_box_autoadd_pool_config(SseDeserializer deserializer);

  @protected
  (int, int) sse_decode_box_autoadd_record_u_32_u_32(
    SseDeserializer deserializer,
  );

  @protected
  int sse_decode_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_box_autoadd_u_64(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_box_autoadd_usize(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  List<Coin>
  sse_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    SseDeserializer deserializer,
  );

  @protected
  List<Pool>
  sse_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    SseDeserializer deserializer,
  );

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  Network sse_decode_network(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  Address?
  sse_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    SseDeserializer deserializer,
  );

  @protected
  Mnemonic?
  sse_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    SseDeserializer deserializer,
  );

  @protected
  double? sse_decode_opt_box_autoadd_f_64(SseDeserializer deserializer);

  @protected
  int? sse_decode_opt_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  BigInt? sse_decode_opt_box_autoadd_u_64(SseDeserializer deserializer);

  @protected
  BigInt? sse_decode_opt_box_autoadd_usize(SseDeserializer deserializer);

  @protected
  List<Coin>?
  sse_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    SseDeserializer deserializer,
  );

  @protected
  List<Pool>?
  sse_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    SseDeserializer deserializer,
  );

  @protected
  PoolConfig sse_decode_pool_config(SseDeserializer deserializer);

  @protected
  (int, int) sse_decode_record_u_32_u_32(SseDeserializer deserializer);

  @protected
  int sse_decode_u_16(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    Address self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    Coin self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    CoinjoinResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ListCoinsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ListPoolsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    Mnemonic self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    PeerConfig self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    Pool self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    CoinjoinResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ListCoinsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ListPoolsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    PeerConfig self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    Coin self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    CoinjoinResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ListCoinsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ListPoolsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    PeerConfig self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    Pool self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    Address self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    Coin self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    CoinjoinResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ListCoinsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ListPoolsResult self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    Mnemonic self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    PeerConfig self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    Pool self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void
  sse_encode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    Address self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    Mnemonic self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_box_autoadd_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_pool_config(
    PoolConfig self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_box_autoadd_record_u_32_u_32(
    (int, int) self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_box_autoadd_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_usize(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void
  sse_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    List<Coin> self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    List<Pool> self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_list_prim_u_8_strict(
    Uint8List self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_network(Network self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void
  sse_encode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    Address? self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    Mnemonic? self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_opt_box_autoadd_f_64(double? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_32(int? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_64(BigInt? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_usize(BigInt? self, SseSerializer serializer);

  @protected
  void
  sse_encode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    List<Coin>? self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    List<Pool>? self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_pool_config(PoolConfig self, SseSerializer serializer);

  @protected
  void sse_encode_record_u_32_u_32((int, int) self, SseSerializer serializer);

  @protected
  void sse_encode_u_16(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
  _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
    : _lookup = dynamicLibrary.lookup;

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddressPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddressPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddressPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddress =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAddressPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoin =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResult =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCoinjoinResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResult =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListCoinsResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResult =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerListPoolsResultPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonicPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonic =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMnemonicPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfigPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfigPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfigPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfig =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeerConfigPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPoolPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool',
      );
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPoolPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPoolPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'frbgen_joinstr_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool',
      );
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPool =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPoolPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();
}
