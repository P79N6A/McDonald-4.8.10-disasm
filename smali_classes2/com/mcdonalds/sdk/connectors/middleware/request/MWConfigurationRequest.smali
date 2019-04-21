.class public abstract Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWConfigurationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestClass:",
        "Ljava/lang/Object;",
        "ResponseClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<TRequestClass;TResponseClass;>;"
    }
.end annotation


# static fields
.field private static final PARAMS_PATH:Ljava/lang/String; = "modules.Configuration.availableConfigs"

.field protected static final URL_PATH:Ljava/lang/String; = "/application/configuration"


# instance fields
.field protected mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

.field private validRequest:Z


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest<TRequestClass;TResponseClass;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 21
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "modules.Configuration.availableConfigs"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .local v0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 24
    .local v3, "params":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/LinkedTreeMap;

    .line 25
    .local v1, "param":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "id"

    invoke-virtual {v1, v5}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    .local v2, "paramID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->getConfigurationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->getUSConfigurationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->validRequest:Z

    .line 29
    move-object v3, v1

    .line 34
    .end local v1    # "param":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "paramID":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 35
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 36
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->putAll(Ljava/util/Map;)V

    .line 38
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract getConfigURL()Ljava/lang/String;
.end method

.method public abstract getConfigurationID()Ljava/lang/String;
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest<TRequestClass;TResponseClass;>;"
    const-string v0, "/application/configuration"

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest<TRequestClass;TResponseClass;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUSConfigurationID()Ljava/lang/String;
.end method

.method public isValidRequest()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest<TRequestClass;TResponseClass;>;"
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;->validRequest:Z

    return v0
.end method
