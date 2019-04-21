.class Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

.field final synthetic val$favoriteName:Ljava/lang/String;

.field final synthetic val$input:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->val$input:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->val$favoriteName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 360
    if-nez p3, :cond_0

    .line 361
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->val$input:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 362
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$502(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Z)Z

    .line 363
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->val$favoriteName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1200(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Ljava/lang/String;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1300(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    .line 370
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$1400(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$200(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Landroid/view/LayoutInflater;)V

    .line 373
    return-void

    .line 365
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 353
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
