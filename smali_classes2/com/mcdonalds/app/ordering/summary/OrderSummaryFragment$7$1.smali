.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Boolean;
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

    .line 689
    if-nez p3, :cond_0

    .line 690
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->val$addFavoritesButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->val$addFavoritesButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 693
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->setSaveToFavoritesButtonVisible()V

    .line 695
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 710
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 698
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 699
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1$1;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;)V

    .line 700
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 708
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->this$1:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

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

    .line 686
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
