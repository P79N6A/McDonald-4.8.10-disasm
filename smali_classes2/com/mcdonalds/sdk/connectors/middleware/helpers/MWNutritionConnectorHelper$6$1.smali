.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v0, v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Z)Z

    .line 261
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    new-array v1, v4, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    .line 263
    return-void

    .line 261
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
