.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;
.source "MWNutritionGetItemDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/item/nutrition/itemDetail"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "notUsed"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "combination"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "combination"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "combination"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "/item/nutrition/itemDetail"

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    return-object v0
.end method
