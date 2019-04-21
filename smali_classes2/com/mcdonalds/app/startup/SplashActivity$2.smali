.class Lcom/mcdonalds/app/startup/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->authenticateCustomer(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object p3, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    if-nez p3, :cond_9

    .line 314
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/startup/SplashActivity;->access$100(Lcom/mcdonalds/app/startup/SplashActivity;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/startup/SplashActivity$2$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/startup/SplashActivity$2$1;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$2;)V

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 384
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    invoke-virtual {p1, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 328
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {p1, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 333
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 335
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/AppUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    new-instance v4, Lcom/mcdonalds/app/startup/SplashActivity$2$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/startup/SplashActivity$2$2;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$2;)V

    invoke-static {v4}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 350
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "customerId":Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-virtual {v4}, Lcom/mcdonalds/app/startup/SplashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f1100d3

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 354
    .local v3, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    if-nez v3, :cond_6

    .line 355
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdateTermsAndCondition()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdatePrivacyPolicy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 356
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    const-class v5, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Ljava/lang/Class;)V

    .line 368
    :goto_1
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v4

    const-string v5, "Signed-in"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto/16 :goto_0

    .line 358
    :cond_5
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/startup/SplashActivity;->access$000(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto :goto_1

    .line 361
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdateTermsAndCondition()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdatePrivacyPolicy()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 362
    :cond_7
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    const-class v5, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 364
    :cond_8
    invoke-virtual {v3, v7}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    goto :goto_1

    .line 371
    .end local v0    # "customerId":Ljava/lang/String;
    .end local v3    # "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    :cond_9
    instance-of v4, p3, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v4, :cond_b

    .line 372
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v1

    .line 373
    .local v1, "errorCode":I
    const/16 v4, -0x839

    if-ne v1, v4, :cond_a

    .line 374
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    .line 375
    .local v2, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 379
    .end local v2    # "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    :cond_a
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/startup/SplashActivity;->access$000(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto/16 :goto_0

    .line 381
    .end local v1    # "errorCode":I
    :cond_b
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "Anonymous"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 382
    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$2;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/startup/SplashActivity;->access$000(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto/16 :goto_0
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

    .line 309
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/startup/SplashActivity$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
