.class Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;
.super Ljava/lang/Object;
.source "FavoriteInputViewHolder.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->removeProductFromFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    iput-object p2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    if-nez p3, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 301
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->access$400(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->access$400(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0901c0

    .line 303
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    new-instance v3, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7$1;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;)V

    .line 305
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 315
    .end local v0    # "message":Ljava/lang/String;
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

    .line 295
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
