.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "MWCustomerSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/CustomerConnector;


# static fields
.field public static final CONFIG:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity"

.field public static final CONFIG_API_KEY:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity.mcd_apikey"

.field public static final CONFIG_BASE_URL:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity.baseUrl"

.field public static final CONFIG_LOCALE:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity.languageName"

.field public static final CONFIG_MARKET_ID:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity.marketId"

.field public static final CONFIG_VERSIONING_SERVICE_BASE_URL:Ljava/lang/String; = "connectors.MiddlewareCustomerSecurity.customerSecurity.versioningService"

.field private static final MIDDLEWARE_ACCESS_TOKEN_EXPIRED_CODE:Ljava/lang/String; = "414"

.field private static final MIDDLEWARE_ACCESS_TOKEN_INVALID_CODE:Ljava/lang/String; = "413"

.field private static final MIDDLEWARE_ACCOUNT_DEACTIVATED_CODE:Ljava/lang/String; = "6910"

.field private static final MIDDLEWARE_ACCOUNT_DEACTIVATED_ERROR_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_ACCOUNT_UPDATE_PASSWORD_ERROR_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_AUTHENTICATION_ERROR_GENERIC_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_CHANGE_PASSWORD_EMAIL_EXPIRED_FAILURE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_CHANGE_PASSWORD_FAILED_CODE:Ljava/lang/String; = "6906"

.field private static final MIDDLEWARE_CHANGE_PASSWORD_INCORRECT_CODE:Ljava/lang/String; = "350"

.field private static final MIDDLEWARE_DELETE_ACCOUNT_ERROR_CODE:Ljava/lang/String; = "310"

.field private static final MIDDLEWARE_DOWN_ERROR_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_EMAIL_ALREADY_VERIFIED_ERROR_CODE:Ljava/lang/String; = "540"

.field private static final MIDDLEWARE_EMAIL_ALREADY_VERIFIED_FAILURE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_EMAIL_NOT_VERIFIED_CODE:Ljava/lang/String; = "499"

.field private static final MIDDLEWARE_EMAIL_VERIFICATION_LINK_EXPIRED_CODE:Ljava/lang/String; = "6911"

.field private static final MIDDLEWARE_EMAIL_VERIFY_LINK_EXPIRED_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_FIELDS_INVALID_CODE:Ljava/lang/String; = "210"

.field private static final MIDDLEWARE_INTERNAL_SERVER_ERROR_CODE:Ljava/lang/String; = "6900"

.field private static final MIDDLEWARE_REFRESH_TOKEN_FAILED_CODE:Ljava/lang/String; = "6908"

.field private static final MIDDLEWARE_REGISTRATION_EMAIL_INVALID_CODE:Ljava/lang/String; = "6901"

.field private static final MIDDLEWARE_REGISTRATION_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_REGISTRATION_FAILURE_CODE:Ljava/lang/String; = "390"

.field private static final MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_AND_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_IN_USE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_REGISTRATION_FAILURE_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_RESET_PASSWORD_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_SERVER_ERROR_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_SMS_VERIFICATION_FAILED_CODE:Ljava/lang/String; = "6802"

.field private static final MIDDLEWARE_SMS_VERIFICATION_FAILURE_MESSAGE:Ljava/lang/String;

.field private static final MIDDLEWARE_SUCCESS_CODE:Ljava/lang/String; = "6011"

.field private static final MIDDLEWARE_TOKEN_UNKNOWN_CODE:Ljava/lang/String; = "200"

.field public static final NAME:Ljava/lang/String; = "mwcustomersecurity"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mApiBaseUrl:Ljava/lang/String;

.field private mApiKey:Ljava/lang/String;

.field private mCalledRefreshToken:Z

.field private mLocale:Ljava/lang/String;

.field private mMarket:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenFailed:Z

.field private mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field private mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_210:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_AUTHENTICATION_ERROR_GENERIC_MESSAGE:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_212:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_RESET_PASSWORD_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_350:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_ACCOUNT_UPDATE_PASSWORD_ERROR_MESSAGE:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_413:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_CHANGE_PASSWORD_EMAIL_EXPIRED_FAILURE_MESSAGE:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_540:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_EMAIL_ALREADY_VERIFIED_FAILURE_MESSAGE:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_3901:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_IN_USE_MESSAGE:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_3902:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_3903:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_AND_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_6802:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_SMS_VERIFICATION_FAILURE_MESSAGE:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_6900:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_SERVER_ERROR_MESSAGE:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_6901:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->offline_warning:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_DOWN_ERROR_MESSAGE:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_6910:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_ACCOUNT_DEACTIVATED_ERROR_MESSAGE:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mcdonalds/sdk/R$string;->mw_cs_err_6911:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_EMAIL_VERIFY_LINK_EXPIRED_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->setContext(Landroid/content/Context;)V

    .line 140
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 141
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->setBaseUrl()V

    .line 142
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->fromJanrainCustomerResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_SERVER_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_EMAIL_ALREADY_VERIFIED_FAILURE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_CHANGE_PASSWORD_EMAIL_EXPIRED_FAILURE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_RESET_PASSWORD_EMAIL_INVALID_FAILURE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshTokenFailed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshTokenFailed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mCalledRefreshToken:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mCalledRefreshToken:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNewAccessAndRefreshTokensAccountUpdate(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getRefreshTokenAccountUpdate(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_ACCOUNT_UPDATE_PASSWORD_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNewAccessAndRefreshTokensAccountVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getRefreshTokenAccountVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_SMS_VERIFICATION_FAILURE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_EMAIL_VERIFY_LINK_EXPIRED_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getVersioningService(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_ACCOUNT_DEACTIVATED_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_AUTHENTICATION_ERROR_GENERIC_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_DOWN_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_AND_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_EMAIL_IN_USE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->MIDDLEWARE_REGISTRATION_FAILURE_PHONE_NUMBER_IN_USE_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method private fromJanrainCustomerResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 319
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 320
    .local v0, "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getBirthdateCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 324
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getPrimaryAddressResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->getMobilePhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getPrimaryAddressResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmTermsAndConditionVersion(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getSmsVerified()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "smsVerified":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSmsVerified(Z)V

    .line 334
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getEmailVerified()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "emailVerified":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    .line 337
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->isDeactivateAccount()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setIsActive(Z)V

    .line 338
    return-object v0

    .end local v1    # "emailVerified":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 332
    goto :goto_0

    .restart local v1    # "emailVerified":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 335
    goto :goto_1

    :cond_2
    move v4, v5

    .line 337
    goto :goto_2
.end method

.method private getCustomerFromResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;

    .prologue
    .line 417
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 418
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getBirthdateCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 421
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 424
    return-object v0
.end method

.method private getCustomerFromResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;

    .prologue
    .line 428
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 429
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getBirthdateCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 432
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 435
    return-object v0
.end method

.method private getNewAccessAndRefreshTokensAccountUpdate(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$13;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1012
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshTokenFailed:Z

    .line 1013
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;

    .line 1015
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1017
    return-void
.end method

.method private getNewAccessAndRefreshTokensAccountVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "verificationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$14;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$14;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1043
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshTokenFailed:Z

    .line 1044
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;

    .line 1046
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1048
    return-void
.end method

.method private getRefreshTokenAccountUpdate(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p2, "accountUpdateListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$11;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 942
    .local v0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mCalledRefreshToken:Z

    .line 943
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRefreshTokenRequest;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshToken:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRefreshTokenRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 947
    return-void
.end method

.method private getRefreshTokenAccountVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "verificationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p3, "smsListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 986
    .local v0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mCalledRefreshToken:Z

    .line 987
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRefreshTokenRequest;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mRefreshToken:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRefreshTokenRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 991
    return-void
.end method

.method private getVersioningService(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 314
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityConfigServiceRequest;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityConfigServiceRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 316
    return-void
.end method

.method private setBaseUrl()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    .line 148
    .local v1, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.baseUrl"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "base":Ljava/lang/String;
    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.mcd_apikey"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mApiKey:Ljava/lang/String;

    .line 151
    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.marketId"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mMarket:Ljava/lang/String;

    .line 152
    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.languageName"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mLocale:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 786
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "favoriteName"    # Ljava/lang/String;
    .param p4, "isProduct"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 726
    .local p3, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public associateDevice(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "deviceToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 756
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 11
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "connectors.MiddlewareCustomerSecurity.customerSecurity.locale"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "locale":Ljava/lang/String;
    new-instance v8, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 217
    .local v8, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v6, ""

    .line 219
    .local v6, "socialProvider":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v9

    .line 221
    .local v9, "socialNetworkType":I
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v10

    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecuritySocialAuthenticationRequest;

    .line 232
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getLastName()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecuritySocialAuthenticationRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v10, v0, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 246
    .end local v6    # "socialProvider":Ljava/lang/String;
    .end local v9    # "socialNetworkType":I
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 220
    .restart local v6    # "socialProvider":Ljava/lang/String;
    :cond_0
    const/4 v9, -0x1

    goto :goto_0

    .line 223
    .restart local v9    # "socialNetworkType":I
    :pswitch_0
    const-string v6, "facebook"

    .line 224
    goto :goto_1

    .line 226
    :pswitch_1
    const-string v6, "googleplus"

    goto :goto_1

    .line 240
    .end local v6    # "socialProvider":Ljava/lang/String;
    .end local v9    # "socialNetworkType":I
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;

    .line 242
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_2

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 487
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$5;

    invoke-direct {v0, p0, p5}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$5;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 502
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountResetPasswordResponse;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;

    invoke-direct {v2, p0, p3, p4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 504
    const/4 v1, 0x0

    return-object v1
.end method

.method public deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "favoriteLocationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 731
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "cancellationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 635
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$8;

    invoke-direct {v0, p0, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$8;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 656
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mAccessToken:Ljava/lang/String;

    invoke-direct {v2, p0, p1, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 657
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 761
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddressElements(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 766
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCatalogUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 680
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Catalog;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    return-object v0
.end method

.method public getConfigBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "connectors.MiddlewareCustomerSecurity.customerSecurity"

    return-object v0
.end method

.method public getConfigBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "connectors.MiddlewareCustomerSecurity.customerSecurity.baseUrl"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 771
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 721
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxItemQuantity()I
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "paymentProviderData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 741
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 706
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentOrders(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "numRecents"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 746
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;>;"
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v1, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>()V

    .line 670
    .local v0, "facebook":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getNameForType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setSocialNetworkName(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setType(I)V

    .line 672
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setValid(Z)V

    .line 673
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface {p1, v1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 675
    return-object v3
.end method

.method public getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "socialLoginId"    # I
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 552
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.baseUrl"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersioningServiceUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1060
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.MiddlewareCustomerSecurity.customerSecurity.versioningService.baseUrl"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1061
    .local v0, "versioningServiceUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.MiddlewareCustomerSecurity.customerSecurity.versioningService.configPath"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.MiddlewareCustomerSecurity.customerSecurity.versioningService.configQueries"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .end local v0    # "versioningServiceUrl":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public paymentTypePostRegistrationURL(ILjava/lang/Boolean;ILcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3, "storeId"    # I
    .param p4, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "I",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 711
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 11
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v10, 0x0

    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v10, v10, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 407
    :goto_0
    return-object v10

    .line 348
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v2

    .line 350
    .local v2, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;

    invoke-direct {v7, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 391
    .local v7, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "socialAuthToken":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "connectors.MiddlewareCustomerSecurity.customerSecurity.locale"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "locale":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v9

    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountSocialRequest;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountSocialRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 400
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "socialAuthToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "termsAndConditionVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "privacyPolicyVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountNativeRequest;

    invoke-direct {v1, p0, p1, v8, v6}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountNativeRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .param p4, "isOneTimePayment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1067
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 791
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$4;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$4;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 470
    .local v1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResendEmailRequest;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResendEmailRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 476
    const/4 v2, 0x0

    return-object v2
.end method

.method public resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$6;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$6;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 531
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountForgotPasswordResponse;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountForgotPasswordRequest;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountForgotPasswordRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 534
    return-object v1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 558
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 696
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 801
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 806
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 811
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$9;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 842
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResendSMSRequest;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mAccessToken:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResendSMSRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 846
    return-object v1
.end method

.method public setDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "preferences"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 624
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-interface {p1, v0, v0, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 413
    return-object v0
.end method

.method public trackNotification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "deliveryID"    # Ljava/lang/String;
    .param p4, "tagID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 629
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAddressBook(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 781
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updatePayment(Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "paymentProviderData"    # Ljava/lang/String;
    .param p3, "isPreferred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 716
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v5, 0x0

    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 619
    :goto_0
    return-object v5

    .line 569
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$7;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 614
    .local v1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.MiddlewareCustomerSecurity.customerSecurity.marketId"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "addressCountry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mAccessToken:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public updateTermsAndConditions(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "isPrivacyPolicyAccepted"    # Z
    .param p3, "isTermsOfUseAccepted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "ZZ",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 910
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 776
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "verificationType"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .param p3, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 851
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 852
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 854
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;)V

    .line 888
    .local v0, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;>;"
    sget-object v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$15;->$SwitchMap$com$mcdonalds$sdk$modules$customer$CustomerProfile$AccountVerificationType:[I

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 902
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p4, v2, v4, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 905
    :goto_0
    return-object v1

    .line 890
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountVerificationSMSRequest;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->mAccessToken:Ljava/lang/String;

    invoke-direct {v3, p0, v4, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountVerificationSMSRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 895
    :pswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountVerificationEmailRequest;

    invoke-direct {v3, p0, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountVerificationEmailRequest;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
