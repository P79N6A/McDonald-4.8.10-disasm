.class Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->init(Landroid/view/LayoutInflater;)V
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
        "Lcom/mcdonalds/sdk/modules/models/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->val$inflater:Landroid/view/LayoutInflater;

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

    .line 149
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$102(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;->val$inflater:Landroid/view/LayoutInflater;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$200(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Landroid/view/LayoutInflater;)V

    .line 157
    return-void
.end method
