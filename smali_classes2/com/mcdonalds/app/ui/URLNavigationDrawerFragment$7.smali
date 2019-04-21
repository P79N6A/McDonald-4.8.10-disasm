.class Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;
.super Ljava/lang/Object;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->restart()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$prefSavedLogin:Ljava/lang/String;

.field final synthetic val$prefSavedLoginPass:Ljava/lang/String;

.field final synthetic val$prefSavedSocialID:I

.field final synthetic val$tutorialLastShownVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p3, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedLogin:Ljava/lang/String;

    iput-object p4, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedLoginPass:Ljava/lang/String;

    iput p5, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedSocialID:I

    iput-object p6, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$tutorialLastShownVersion:Ljava/lang/String;

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

    .line 257
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 262
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 264
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->deleteCurrentOrder()V

    .line 265
    invoke-static {v4}, Lcom/mcdonalds/app/util/LanguageUtil;->setClear(Z)V

    .line 266
    invoke-static {v4}, Lcom/mcdonalds/app/util/LanguageUtil;->setPrefRememberLogin(Z)V

    .line 267
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->clearCurrentStore()V

    .line 268
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 272
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->clearToken()V

    .line 273
    invoke-static {}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->destroy()V

    .line 274
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->destroy()V

    .line 275
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getSharedInstance()Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->clearConnectors()V

    .line 276
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->clearModules()V

    .line 277
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->disableUpdates()V

    .line 278
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->destroy()V

    .line 280
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->clearCache()V

    .line 281
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->clear()V

    .line 284
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedLoginPass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$prefSavedSocialID:I

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 287
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->val$tutorialLastShownVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setTutorialLastShownVersionName(Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
