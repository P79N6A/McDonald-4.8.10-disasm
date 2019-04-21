.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

.field final synthetic val$finalRecipes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;->val$finalRecipes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;->val$finalRecipes:Ljava/util/List;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 314
    return-void
.end method
