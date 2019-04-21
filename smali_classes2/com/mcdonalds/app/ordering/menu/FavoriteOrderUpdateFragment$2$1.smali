.class Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;
.super Ljava/lang/Object;
.source "FavoriteOrderUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

.field final synthetic val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

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

    .line 143
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->val$rootView:Landroid/view/View;

    const v2, 0x7f1101fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "favoriteName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .line 149
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

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

    .line 159
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->this$1:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;->val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-static {v1, v0, v2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$200(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    goto :goto_0
.end method
