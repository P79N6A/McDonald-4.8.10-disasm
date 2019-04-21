.class Lcom/mcdonalds/app/customer/SignOutFragment$3;
.super Ljava/lang/Object;
.source "SignOutFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignOutFragment;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

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

    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignOutFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    aput-object p3, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    if-eqz p3, :cond_1

    .line 121
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 127
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/ServiceUtils;->removeFavoriteStoresCache()V

    .line 129
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 130
    .local v1, "customDimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$100(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$100(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    const v3, 0x7f09084e

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/SignOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    const v4, 0x7f09084f

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/customer/SignOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 138
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 141
    .local v0, "analyticsArgs":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 142
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/social/SocialLogin;->clearSocialLogins(Landroid/app/Activity;)V

    .line 144
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Signed-out"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v4

    invoke-virtual {v2, v7, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 147
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 148
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    const-class v3, Lcom/mcdonalds/app/MainActivity;

    const-string v4, "dashboard"

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/customer/SignOutFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
