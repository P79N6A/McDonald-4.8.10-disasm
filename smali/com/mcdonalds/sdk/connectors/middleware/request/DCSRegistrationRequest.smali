.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
.source "DCSRegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "customer/security/account"


# instance fields
.field private password:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field private profile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loginUsername"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "profile"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;-><init>(Z)V

    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;->username:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;->type:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;->password:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;->profile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .line 34
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
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "customer/security/account"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;->getHeaderMap()Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "type=traditional"

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 48
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;

    return-object v0
.end method
