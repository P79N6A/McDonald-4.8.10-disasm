.class Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;
.super Ljava/lang/Object;
.source "CustomerOrderConversionSparse.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

.field final synthetic val$done:I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->this$1:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

    iput p2, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->val$index:I

    iput p3, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->val$done:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    if-nez p3, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->this$1:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->this$1:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->val$index:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 229
    iget v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->val$done:I

    if-ne v0, v4, :cond_0

    .line 232
    new-instance v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->this$1:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;

    iget-object v1, v1, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;-><init>(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)V

    new-array v1, v3, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
