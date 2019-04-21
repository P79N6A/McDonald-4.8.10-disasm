.class Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;
.super Landroid/database/ContentObserver;
.source "ProductDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 458
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$400(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$400(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$500(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 460
    :cond_0
    return-void
.end method
