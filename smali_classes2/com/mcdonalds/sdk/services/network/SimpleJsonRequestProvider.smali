.class public abstract Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;
.super Ljava/lang/Object;
.source "SimpleJsonRequestProvider.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
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
    .line 38
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    const/4 v0, 0x0

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
    .line 23
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;, "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider<TT;>;"
    return-void
.end method
