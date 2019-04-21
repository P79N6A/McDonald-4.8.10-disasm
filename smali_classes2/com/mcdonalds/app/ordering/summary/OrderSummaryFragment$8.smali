.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onAddToFavoritesClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 723
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 724
    return-void
.end method
