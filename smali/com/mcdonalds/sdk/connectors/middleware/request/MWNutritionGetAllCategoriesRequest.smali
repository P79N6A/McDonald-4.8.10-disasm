.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;
.source "MWNutritionGetAllCategoriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/nutrition/category/list"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "notUsed"    # Ljava/lang/String;
    .param p3, "categoryType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "categoryType"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "categoryType"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "showLiveData"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "/nutrition/category/list"

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;

    return-object v0
.end method
