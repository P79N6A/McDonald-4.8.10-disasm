.class Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;
.super Ljava/lang/Object;
.source "SignInChangePasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->onSubmitDoChangePassword()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 338
    if-eqz p3, :cond_1

    .line 339
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 343
    :cond_1
    new-instance v1, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6$1;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;)V

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 355
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->access$700(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPasswordChangeRequired(Z)V

    .line 358
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Signed-in"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 361
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 363
    .local v0, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 365
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
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

    .line 328
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
