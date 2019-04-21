.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateScheduledOrders()V
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
        "Lcom/mcdonalds/app/home/HomeListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

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

    .line 1107
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/app/home/HomeListItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;"
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/sdk/AsyncCounter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 1113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListItem;

    .line 1114
    .local v0, "item":Lcom/mcdonalds/app/home/HomeListItem;
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    goto :goto_0

    .line 1117
    .end local v0    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_0
    return-void
.end method
