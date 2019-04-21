.class public final enum Lcom/threatmetrix/TrustDefender/THMStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefender/THMStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum THM_Already_Initialised:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Blocked:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_ConfigurationError:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_EndNotifier_NotFound:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_HostVerification_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_In_Quiet_Period:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Invalid_Context:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Invalid_FP_Server:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_Invalid_OrgID:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_PartialProfile:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field public static final enum THM_ThirdPartyLibrary_Not_Found:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field private static final synthetic c:[Lcom/threatmetrix/TrustDefender/THMStatusCode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_NotYet"

    const-string v2, "Not Yet"

    const-string v3, "Profile request has successfully started but is not completed"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 18
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_OK"

    const-string v2, "Okay"

    const-string v3, "Completed, No errors"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 22
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Connection_Error"

    const-string v2, "Connection Error"

    const-string v3, "There has been a connection issue, profiling aborted"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 26
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_HostNotFound_Error"

    const-string v2, "Host Not Found"

    const-string v3, "Unable to resolve the host name"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 30
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_NetworkTimeout_Error"

    const-string v2, "Network Timeout"

    const-string v3, "Communications layer timed out"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 34
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Internal_Error"

    const/4 v2, 0x5

    const-string v3, "Internal Error"

    const-string v4, "Internal Error, profiling incomplete or interrupted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 38
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_HostVerification_Error"

    const/4 v2, 0x6

    const-string v3, "Host Verification Error"

    const-string v4, "Certificate verification failure! Potential MITM attack"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 42
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Interrupted_Error"

    const/4 v2, 0x7

    const-string v3, "Interrupted"

    const-string v4, "Request was cancelled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 46
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Invalid_OrgID"

    const/16 v2, 0x8

    const-string v3, "Invalid ORG ID"

    const-string v4, "Request contained an invalid org id"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_OrgID:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 50
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_ConfigurationError"

    const/16 v2, 0x9

    const-string v3, "Configuration Error"

    const-string v4, "Failed to retrieve configuration from server"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 54
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_PartialProfile"

    const/16 v2, 0xa

    const-string v3, "Partial Profile"

    const-string v4, "Connection error, only partial profile completed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 58
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Blocked"

    const/16 v2, 0xb

    const-string v3, "Profiling is blocked"

    const-string v4, "Profiling is blocked.(Screen is off)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Blocked:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 62
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Already_Initialised"

    const/16 v2, 0xc

    const-string v3, "Already Initialised"

    const-string v4, "TrustDefender is already initialised, use the current instance"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Already_Initialised:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 66
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Invalid_Context"

    const/16 v2, 0xd

    const-string v3, "Invalid Context"

    const-string v4, "Request contained an invalid context"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_Context:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 70
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_Invalid_FP_Server"

    const/16 v2, 0xe

    const-string v3, "Invalid FP Server"

    const-string v4, "Request contained an invalid Fingerprint server url"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_FP_Server:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 74
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_EndNotifier_NotFound"

    const/16 v2, 0xf

    const-string v3, "EndNotifier not found"

    const-string v4, "EndNotifier is mandatory in profile request"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_EndNotifier_NotFound:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 78
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_ThirdPartyLibrary_Not_Found"

    const/16 v2, 0x10

    const-string v3, "Okhttp library Not found"

    const-string v4, "okhttp library can\'t be found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ThirdPartyLibrary_Not_Found:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 82
    new-instance v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    const-string v1, "THM_In_Quiet_Period"

    const/16 v2, 0x11

    const-string v3, "In Quiet Period"

    const-string v4, "Profiling is blocked (In Quiet Period)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/THMStatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_In_Quiet_Period:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 9
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/threatmetrix/TrustDefender/THMStatusCode;

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_OrgID:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Blocked:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Already_Initialised:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_Context:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_FP_Server:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_EndNotifier_NotFound:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ThirdPartyLibrary_Not_Found:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_In_Quiet_Period:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->c:[Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->a:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->b:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->c:[Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefender/THMStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->a:Ljava/lang/String;

    return-object v0
.end method
