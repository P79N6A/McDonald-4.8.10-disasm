.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V
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
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

.field final synthetic val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

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

    .line 432
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
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

    .line 436
    if-nez p3, :cond_1

    .line 438
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1102(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1200(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V

    .line 444
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1300(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V

    .line 449
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
