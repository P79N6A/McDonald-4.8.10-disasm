.class Lcom/mcdonalds/app/util/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/LoginManager;->login(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/util/LoginManager;

.field final synthetic val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iput-object p2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iput-object p3, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/16 v5, 0xbb9

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

    .line 439
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 440
    if-nez p3, :cond_5

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v2, :cond_5

    .line 441
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v2, v3, :cond_1

    .line 443
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 444
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->persistProfile()V

    .line 445
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$700(Lcom/mcdonalds/app/util/LoginManager;)V

    .line 446
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->notifyObservers(Ljava/lang/Object;)V

    .line 448
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->access$800(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 476
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Signed-in"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 491
    :cond_0
    :goto_1
    return-void

    .line 449
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v2, v3, :cond_2

    .line 450
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 451
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->persistProfile()V

    .line 452
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$900(Lcom/mcdonalds/app/util/LoginManager;)V

    .line 453
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->notifyObservers(Ljava/lang/Object;)V

    .line 455
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->access$1000(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 458
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    instance-of v2, v2, Lcom/mcdonalds/app/MainActivity;

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-string v3, "dashboard"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 465
    :cond_4
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/util/LoginManager$4$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/util/LoginManager$4$1;-><init>(Lcom/mcdonalds/app/util/LoginManager$4;)V

    invoke-virtual {v2, p1, v3}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 472
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/util/LoginManager;->access$102(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 473
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$4;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iget-object v4, p0, Lcom/mcdonalds/app/util/LoginManager$4;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v2, v3, v4}, Lcom/mcdonalds/app/util/LoginManager;->access$1100(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 479
    :cond_5
    instance-of v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v2, :cond_6

    .line 480
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    .line 481
    .local v0, "errorCode":I
    const/16 v2, -0x839

    if-ne v0, v2, :cond_0

    .line 482
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 483
    .local v1, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    .end local v0    # "errorCode":I
    .end local v1    # "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    :cond_6
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
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

    .line 432
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/LoginManager$4;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
