.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
.source "DCSResetPasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "customer/security/password"


# instance fields
.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;->username:Ljava/lang/String;

    .line 18
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
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "customer/security/password"

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 27
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    return-object v0
.end method