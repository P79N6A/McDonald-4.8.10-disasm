.class Lcom/mcdonalds/app/customer/UserValidationFragment$5;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;->trySignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 327
    if-nez p3, :cond_2

    .line 329
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 334
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    const/4 v2, 0x0

    .line 339
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->val$msg:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 345
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->persistProfile()V

    .line 346
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$900(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 322
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/UserValidationFragment$5;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
