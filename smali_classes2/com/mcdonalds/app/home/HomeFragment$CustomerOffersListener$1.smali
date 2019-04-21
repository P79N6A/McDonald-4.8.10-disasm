.class Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

.field final synthetic val$offerList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->val$offerList:Ljava/util/List;

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

    .line 1022
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "storesList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
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

    .line 1025
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->val$offerList:Ljava/util/List;

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->access$1800(Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$1900(Lcom/mcdonalds/app/home/HomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1028
    :cond_0
    return-void
.end method
