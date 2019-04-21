.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateCustomerLastOrder()V
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
        "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
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

    .line 1087
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/sdk/AsyncCounter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 1089
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 1091
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1092
    .local v5, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string v1, "order"

    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    new-instance v0, Lcom/mcdonalds/app/home/HomeListItem;

    const v1, 0x7f02012a

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .line 1095
    invoke-static {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090444

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "order/last/"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1098
    .local v0, "item":Lcom/mcdonalds/app/home/HomeListItem;
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 1100
    .end local v0    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    .end local v5    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
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

    .line 1083
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;->onResponse(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
