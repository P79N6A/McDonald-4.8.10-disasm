.class Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomerOffersListener"
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
.field private mCustomerFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field mHandler:Landroid/os/Handler;

.field private final mHomeListView:Landroid/widget/ListView;

.field private final mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 2
    .param p2, "storeLocatorModule"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p3, "customerModule"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p4, "homeListView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerModule;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p5, "customerFavoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 983
    iput-object p3, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 984
    iput-object p4, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mHomeListView:Landroid/widget/ListView;

    .line 985
    iput-object p5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerFavoriteStores:Ljava/util/List;

    .line 986
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mHandler:Landroid/os/Handler;

    .line 987
    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment$CustomerOffersListener"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerFavoriteStores:Ljava/util/List;

    return-object v0
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

    .line 973
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 11
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
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "onResponse"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v5

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    if-eqz p1, :cond_a

    .line 992
    if-nez p3, :cond_9

    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 993
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v0, "archivedOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v1, "expiredOffers":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 998
    .local v3, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 999
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1003
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    .end local v3    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1008
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1010
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 1011
    const/4 v2, 0x0

    .line 1012
    .local v2, "nearbyEnabled":Z
    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/home/HomeFragment;->access$1700(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/offers/OfferSection;

    .line 1013
    .local v4, "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    if-nez v2, :cond_3

    .line 1014
    sget-object v7, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->NEAR:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mcdonalds/app/offers/OfferSection;->getSectionType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/mcdonalds/app/offers/OfferSection;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    .line 1019
    .end local v4    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 1020
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    const-wide v6, 0x40cf720000000000L    # 16100.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;

    invoke-direct {v7, p0, p1}, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener$1;-><init>(Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;Ljava/util/List;)V

    invoke-virtual {v5, v6, v10, v7}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1059
    .end local v0    # "archivedOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v1    # "expiredOffers":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v2    # "nearbyEnabled":Z
    :goto_2
    return-void

    .restart local v0    # "archivedOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .restart local v1    # "expiredOffers":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .restart local v2    # "nearbyEnabled":Z
    .restart local v4    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_5
    move v2, v6

    .line 1014
    goto :goto_1

    .line 1031
    .end local v4    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_6
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerFavoriteStores:Ljava/util/List;

    invoke-static {v5, p1, v10, v6}, Lcom/mcdonalds/app/home/HomeFragment;->access$1900(Lcom/mcdonalds/app/home/HomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 1035
    .end local v2    # "nearbyEnabled":Z
    :cond_7
    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 1036
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 1037
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    goto :goto_2

    .line 1041
    .end local v0    # "archivedOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v1    # "expiredOffers":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_8
    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 1042
    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 1043
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    goto :goto_2

    .line 1047
    :cond_9
    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 1048
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 1049
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 1050
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mHomeListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 1055
    :cond_a
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 1056
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 1057
    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->mHomeListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2
.end method
