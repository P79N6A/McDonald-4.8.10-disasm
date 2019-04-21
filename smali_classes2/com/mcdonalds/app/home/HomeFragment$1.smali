.class Lcom/mcdonalds/app/home/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V
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
        "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

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

    .line 153
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const v4, 0x7f090443

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

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$000(Lcom/mcdonalds/app/home/HomeFragment;)V

    .line 158
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$100(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/HomeListAdapter;->removeHomeListItem(Ljava/lang/String;)V

    .line 160
    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    invoke-static {p1}, Lcom/mcdonalds/app/util/OfferUtils;->filterIfFinalized(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, "filteredOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$302(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/sdk/modules/models/CustomerOrder;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$300(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$408(Lcom/mcdonalds/app/home/HomeFragment;)I

    .line 169
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v7

    new-instance v0, Lcom/mcdonalds/app/home/HomeListItem;

    const v1, 0x7f020197

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    .line 170
    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$100(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    .line 171
    invoke-static {v3}, Lcom/mcdonalds/app/home/HomeFragment;->access$300(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcdmobileapp://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    invoke-virtual {v7, v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$1;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    .line 180
    .end local v6    # "filteredOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    :cond_1
    return-void
.end method
