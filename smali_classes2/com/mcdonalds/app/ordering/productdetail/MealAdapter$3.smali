.class Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;
.super Ljava/lang/Object;
.source "MealAdapter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->checkNutritionInformation(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
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
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

.field final synthetic val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 604
    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->access$200(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-static {v0, p1, v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->access$300(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    .line 608
    :cond_0
    return-void
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

    .line 601
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
