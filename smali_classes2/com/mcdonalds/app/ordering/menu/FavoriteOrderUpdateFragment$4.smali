.class Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;
.super Ljava/lang/Object;
.source "FavoriteOrderUpdateFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->removeFavorited()V
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


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    if-eqz p3, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$400(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    .line 246
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$102(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Z)Z

    .line 257
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$900(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    .line 249
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;->onOrderRemoved()V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$600(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, "title":Landroid/widget/TextView;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$800(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$102(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Z)Z

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

    .line 240
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
