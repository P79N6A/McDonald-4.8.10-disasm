.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 236
    return-void
.end method
