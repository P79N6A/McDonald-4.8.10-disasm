.class Lcom/mcdonalds/app/customer/SignOutFragment$2;
.super Ljava/lang/Object;
.source "SignOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    .line 84
    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    .line 85
    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    .line 90
    .local v0, "manager":Lcom/mcdonalds/app/util/LoginManager;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.signin.clearUserNameAfterSignOut"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$100(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setLoggedInState(Z)V

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sign Out"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$100(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$200(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 109
    .end local v0    # "manager":Lcom/mcdonalds/app/util/LoginManager;
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 106
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$000(Lcom/mcdonalds/app/customer/SignOutFragment;)V

    goto :goto_0
.end method
