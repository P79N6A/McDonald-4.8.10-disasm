.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
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
        "Lcom/mcdonalds/app/model/PromoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/app/model/PromoResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1402(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Z)Z

    .line 682
    if-nez p3, :cond_1

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-static {}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/SafeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1602(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;

    .line 691
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "PROMO_LIST"

    .line 692
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v3

    const-wide/32 v4, 0xc350

    .line 691
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 694
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;)V

    .line 700
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 702
    .local v0, "type":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v3, "PROMO_LIST"

    invoke-virtual {v1, v3, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1602(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;

    .line 704
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    invoke-interface {v1, v6, v6, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 675
    check-cast p1, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
