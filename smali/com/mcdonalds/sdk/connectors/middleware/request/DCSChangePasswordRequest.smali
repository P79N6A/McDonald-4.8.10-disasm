.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
.source "DCSChangePasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "customer/security/password/change"


# instance fields
.field private newPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newPassword"
    .end annotation
.end field

.field private newPasswordConfirm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newPasswordConfirm"
    .end annotation
.end field

.field private oldPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oldPassword"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "newPasswordConfirm"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;->username:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;->oldPassword:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;->newPassword:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;->newPasswordConfirm:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "customer/security/password/change"

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;

    return-object v0
.end method
