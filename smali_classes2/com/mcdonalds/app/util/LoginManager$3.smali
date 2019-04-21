.class Lcom/mcdonalds/app/util/LoginManager$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/LoginManager;->register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
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


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iput-object p2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

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
    const/4 v0, 0x1

    const v5, 0x7f0905d4

    const/4 v1, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-nez p3, :cond_7

    .line 233
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$100(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "requireActivation"

    .line 235
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$100(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "requireActivationSocial"

    .line 236
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    .local v0, "requiresActivation":Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$200(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/app/model/Register;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/model/Register;->chooseSignInMethodEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 240
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->access$000(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 259
    .end local v0    # "requiresActivation":Z
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/util/LoginManager;->access$400(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 304
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 236
    goto :goto_0

    .line 241
    .restart local v0    # "requiresActivation":Z
    :cond_5
    if-nez v0, :cond_6

    .line 242
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getAuthenticationParameters()Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->login(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_1

    .line 244
    :cond_6
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 245
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$3$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/LoginManager$3$1;-><init>(Lcom/mcdonalds/app/util/LoginManager$3;)V

    .line 247
    invoke-virtual {v1, v5, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0901f9

    .line 254
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1

    .line 262
    .end local v0    # "requiresActivation":Z
    :cond_7
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 264
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v1, p3}, Lcom/mcdonalds/app/util/LoginManager;->access$500(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 265
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v3, 0x7f090753

    .line 267
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$3$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/LoginManager$3$2;-><init>(Lcom/mcdonalds/app/util/LoginManager$3;)V

    .line 268
    invoke-virtual {v1, v5, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 277
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Email address invalid"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_8
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v1, p3}, Lcom/mcdonalds/app/util/LoginManager;->access$600(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 280
    const-string v1, "LoginManager"

    const-string v2, "CustomerSocialLoginPhoneIsAlreadyVerified"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    instance-of v1, v1, Lcom/mcdonalds/app/customer/SignUpActivity;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    check-cast v1, Lcom/mcdonalds/app/customer/SignUpActivity;

    new-instance v2, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignUpActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_2

    .line 285
    :cond_9
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x3f2

    if-ne v1, v2, :cond_a

    .line 287
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v3, 0x7f0903b1

    .line 288
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v3, 0x7f0907db

    .line 289
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$3$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/LoginManager$3$3;-><init>(Lcom/mcdonalds/app/util/LoginManager$3;)V

    .line 290
    invoke-virtual {v1, v5, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 299
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Email address invalid"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :cond_a
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_2
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

    .line 225
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/LoginManager$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
