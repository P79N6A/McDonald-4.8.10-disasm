.class Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;
.super Ljava/lang/Object;
.source "ProductDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupAddToFavoritesButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$100(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$200(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 438
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->access$300(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->addToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 431
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 432
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EVENT_NAME"

    const-string v3, "favoriteproduct"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 434
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 436
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0
.end method
