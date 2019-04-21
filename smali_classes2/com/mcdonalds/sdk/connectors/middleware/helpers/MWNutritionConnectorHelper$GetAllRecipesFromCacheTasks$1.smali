.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MWNutritionConnectorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;->doInBackground([Ljava/lang/Void;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
