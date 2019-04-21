.class Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;
.super Ljava/lang/Object;
.source "StoreLocatorListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    const-string v1, "onRefresh"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->requestUpdateStoresByCurrentLocation(Z)V

    .line 123
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V

    .line 125
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .line 126
    .local v0, "containerFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getSearchView()Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setText(Ljava/lang/String;)V

    .line 127
    iget-object v1, v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    .end local v0    # "containerFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 130
    return-void
.end method
