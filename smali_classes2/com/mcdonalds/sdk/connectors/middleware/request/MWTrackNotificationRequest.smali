.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWTrackNotificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Ljava/lang/Void;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/tracking"


# instance fields
.field private mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "deliveryId"    # Ljava/lang/String;
    .param p4, "tagID"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 24
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "h%s,%s,%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

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
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/customer/tracking"

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
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 39
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Ljava/lang/Void;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 64
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTrackNotificationRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method
