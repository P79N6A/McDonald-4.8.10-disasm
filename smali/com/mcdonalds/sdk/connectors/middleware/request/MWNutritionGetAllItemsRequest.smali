.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;
.source "MWNutritionGetAllItemsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/item/nutrition/all"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "notUsed"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "showLiveData"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "showLiveData"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "itemType"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "showLiveData"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "/item/nutrition/all"

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    return-object v0
.end method
