.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$14;
.super Lcom/google/gson/reflect/TypeToken;
.source "MWNutritionConnectorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$14;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
