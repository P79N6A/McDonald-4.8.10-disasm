.class Lcom/mcdonalds/app/offers/OfferProductFragment$1;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment;->refresh()V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 175
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez p3, :cond_3

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "filteredResults":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 181
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v1, :cond_0

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    const v5, 0x7f0905ad

    .line 188
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/offers/OfferProductFragment$1$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/offers/OfferProductFragment$1$1;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment$1;)V

    .line 186
    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 196
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "No products available"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 208
    .end local v0    # "filteredResults":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$200(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$100(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 210
    return-void

    .line 198
    .restart local v0    # "filteredResults":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$000(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->addAll(Ljava/util/Collection;)V

    .line 199
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$100(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$000(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$100(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 201
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$100(Lcom/mcdonalds/app/offers/OfferProductFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_1

    .line 205
    .end local v0    # "filteredResults":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
