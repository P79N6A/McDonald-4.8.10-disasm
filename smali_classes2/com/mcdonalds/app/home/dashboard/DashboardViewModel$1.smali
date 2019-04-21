.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOffers(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

.field final synthetic val$asyncListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->val$asyncListener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 213
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Ljava/util/List;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "activeOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$000(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 223
    invoke-virtual {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 224
    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 225
    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->val$asyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 222
    invoke-static {v2, v3, v1, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$400(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->val$asyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;->val$asyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
