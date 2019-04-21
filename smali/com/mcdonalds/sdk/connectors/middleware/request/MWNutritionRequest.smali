.class public abstract Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWNutritionRequest.java"


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
.field private mCustomDeserializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->getHeaderMap()Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWBooleanDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWBooleanDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDoubleDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDoubleDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWStringDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWStringDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDateDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDateDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWRelationTypeDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWRelationTypeDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWComponentsDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWComponentsDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>(Z)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "language"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getNutritionLanguageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "notUsed"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public addCustomDeserializer(Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;)V
    .locals 1
    .param p1, "customTypeAdapter"    # Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    .prologue
    .line 52
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
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
    .line 81
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mCustomDeserializers:Ljava/util/ArrayList;

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
    .line 67
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;

    .prologue
    .line 77
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest<TT;>;"
    return-void
.end method
