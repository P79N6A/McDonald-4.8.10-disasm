.class Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;
.super Ljava/lang/Object;
.source "FavoriteOrderUpdateFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

.field final synthetic val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

.field final synthetic val$favoriteName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->val$favoriteName:Ljava/lang/String;

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
    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    if-nez p3, :cond_1

    .line 199
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->val$favoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 200
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 201
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$400(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    .line 203
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$500(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->val$favoriteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentName(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$600(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->val$favoriteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;->onOrderRemovedAndAdded()V

    .line 226
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 214
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;)V

    .line 216
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 224
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$800(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

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

    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
