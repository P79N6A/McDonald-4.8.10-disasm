.class Lcom/mcdonalds/app/customer/UserValidationFragment$6;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;->doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
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

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f09012c

    const v5, 0x7f09011a

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

    .line 364
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 365
    if-nez p3, :cond_4

    .line 367
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 371
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 372
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 378
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment$6$1;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment$6$1;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment$6;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 418
    .local v0, "onClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.useMobileNumberRegisterOnly"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const v3, 0x7f0906a9

    .line 420
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const v3, 0x7f0906a8

    .line 421
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    .line 422
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    .line 423
    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 443
    .end local v0    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 427
    .restart local v0    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const v3, 0x7f0906a7

    .line 428
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const v3, 0x7f0906a6

    .line 429
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    .line 430
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    .line 431
    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 436
    .end local v0    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 437
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->persistProfile()V

    .line 438
    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$900(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0

    .line 441
    :cond_4
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

    .line 361
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/UserValidationFragment$6;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
