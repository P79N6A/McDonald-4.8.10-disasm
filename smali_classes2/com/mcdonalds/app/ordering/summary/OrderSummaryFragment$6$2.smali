.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->onClick(Landroid/view/View;)V
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
        "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

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

    .line 653
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
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

    .line 658
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 659
    if-nez p3, :cond_0

    .line 660
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->val$addFavoritesButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->val$addFavoritesButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 663
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->setRemoveFromFavoritesButtonVisible()V

    .line 665
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$602(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Ljava/util/List;)Ljava/util/List;

    .line 666
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$700(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    .line 673
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 671
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
