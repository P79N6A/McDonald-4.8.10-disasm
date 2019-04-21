.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSApplicationSecurityRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
.source "DCSApplicationSecurityRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "security/application/authentication"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;-><init>(Z)V

    .line 14
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
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "security/application/authentication"

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 23
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;

    return-object v0
.end method
