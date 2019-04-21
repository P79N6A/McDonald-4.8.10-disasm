.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;
.source "MWNutritionGetItemListOnExternalIDRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/item/nutrition/listExternal"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "notUsed"    # Ljava/lang/String;
    .param p3, "externalItemId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "externalItemId"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "externalItemId"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "/item/nutrition/listExternal"

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;

    return-object v0
.end method
