.class Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1000(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1000(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "favoriteName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .line 258
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5$1;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 267
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Invalid custom order name"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 274
    :goto_1
    return-void

    .line 251
    .end local v0    # "favoriteName":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0    # "favoriteName":Ljava/lang/String;
    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1100(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    goto :goto_1
.end method
