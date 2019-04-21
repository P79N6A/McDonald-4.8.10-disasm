.class Lcom/mcdonalds/app/home/HomeFragment$2$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

.field final synthetic val$favoriteInfoArray:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment$2;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/home/HomeFragment$2;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->val$favoriteInfoArray:Landroid/util/SparseArray;

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

    .line 238
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$2$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 18
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
    .local p1, "customerFavoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez p3, :cond_6

    .line 242
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 243
    .local v15, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->val$favoriteInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 244
    .local v11, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 245
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v11    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v15    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setFavoriteStores(Ljava/util/List;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$600(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    const-string v1, "storeLocator"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 253
    .local v3, "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v14

    .line 254
    .local v14, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v15

    .line 256
    .restart local v15    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 258
    .local v12, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, "storeId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 261
    .local v8, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v4, v4, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    .line 262
    invoke-static {v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v5, v5, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$700(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/widget/ListView;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;-><init>(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Landroid/widget/ListView;Ljava/util/List;)V

    move-object v4, v12

    move-object v5, v9

    move-object/from16 v6, v17

    move-object v9, v1

    .line 261
    invoke-virtual/range {v4 .. v9}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 292
    .end local v3    # "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .end local v8    # "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .end local v14    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v15    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v16    # "storeId":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 259
    .restart local v3    # "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .restart local v12    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .restart local v14    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .restart local v15    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v16    # "storeId":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 264
    .end local v3    # "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .end local v12    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .end local v14    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v15    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v16    # "storeId":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$700(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 270
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    goto :goto_2

    .line 273
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v10

    .line 274
    .local v10, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 276
    .local v13, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->clearOffers()V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/mcdonalds/app/home/HomeListAdapter;->addAppliedOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 287
    .end local v10    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v13    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeFragment$2$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2
.end method
