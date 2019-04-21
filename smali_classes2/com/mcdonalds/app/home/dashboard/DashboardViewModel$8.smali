.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->loadScheduledOrders(Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 981
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 12
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    const-string v1, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;"
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1800(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0906c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1800(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f09033f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 994
    .local v8, "prefix":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yy, hh:mm aaa"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 996
    .local v6, "format":Ljava/text/DateFormat;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;

    .line 998
    .local v9, "status":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    const-string v1, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    .line 999
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getTimestamp()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 998
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "subtitle":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/app/home/HomeListItem;

    const v1, 0x7f02012a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "order/track/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1002
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1004
    .local v0, "item":Lcom/mcdonalds/app/home/HomeListItem;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getStatus()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    .line 1005
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    .end local v0    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    .end local v3    # "subtitle":Ljava/lang/String;
    .end local v9    # "status":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v7, v4, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1011
    return-void
.end method
