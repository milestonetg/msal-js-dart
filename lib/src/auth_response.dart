part of '../msal_js.dart';

/// A response from an auth request.
class AuthResponse {
  /// The unique user ID.
  String? get uniqueId => _jsObject.uniqueId;

  /// The ID of the tenant where the user was found.
  String? get tenantId => _jsObject.tenantId;

  /// The type of token that was requested.
  ///
  /// Either `id_token` or `access_token`.
  String? get tokenType => _jsObject.tokenType;

  /// The ID token of the user.
  dynamic? get idToken => _jsObject.idToken;

  /// The granted access token.
  String? get accessToken => _jsObject.accessToken;

  /// The scopes that were issued for the token.
  List<String>? get scopes => jsDecodeList<String>(_jsObject.scopes);

  /// The date/time when the token will expire.
  DateTime? get expiresOn => _jsObject.expiresOn;

  /// The authenticated account.
  Account? get account {
    final account = _jsObject.account;
    return account == null ? null : Account._fromJsObject(account);
  }

  /// The OAuth 2.0 state that was specified in the auth request.
  ///
  /// See [AuthRequest.state] for more information.
  String? get accountState => _jsObject.accountState;

  final interop.AuthResponse _jsObject;

  AuthResponse._fromJsObject(this._jsObject);
}
