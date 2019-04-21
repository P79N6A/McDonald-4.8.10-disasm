.class public abstract Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "DCSRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private transient mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;-><init>(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "needsToken"    # Z

    .prologue
    .line 13
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "token":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 16
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 19
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 33
    .local v0, "gson":Lcom/google/gson/Gson;
    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-object v1

    .restart local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    .end local v0    # "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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
    .line 27
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest<TT;>;"
    return-void
.end method
