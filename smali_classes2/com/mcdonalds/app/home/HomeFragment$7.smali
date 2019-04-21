.class Lcom/mcdonalds/app/home/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/app/model/PromoResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 441
    if-nez p3, :cond_0

    .line 443
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$1002(Lcom/mcdonalds/app/home/HomeFragment;Ljava/util/List;)Ljava/util/List;

    .line 450
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    new-instance v1, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    .line 451
    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$1000(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    .line 452
    invoke-virtual {v3}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    .line 450
    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$1102(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .line 456
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$1200(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$1100(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 458
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$7;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$1300(Lcom/mcdonalds/app/home/HomeFragment;)V

    .line 462
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

    .line 437
    check-cast p1, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$7;->onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
