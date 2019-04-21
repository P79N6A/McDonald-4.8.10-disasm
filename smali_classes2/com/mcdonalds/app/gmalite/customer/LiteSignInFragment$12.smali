.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 602
    if-nez p3, :cond_7

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 603
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 606
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 607
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1000(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdateTermsAndCondition()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdatePrivacyPolicy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 616
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v2, p1, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1100(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    goto :goto_0

    .line 617
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isAccountVerified()Z

    move-result v2

    if-nez v2, :cond_6

    .line 619
    new-instance v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 635
    .local v1, "mOnClickVerifyAccount":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$2;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 647
    .local v0, "mOnClickCancel":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shouldGoToPreviousView"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 648
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 652
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-eq v2, v3, :cond_0

    .line 653
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    const v4, 0x7f09045c

    .line 654
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    const v4, 0x7f090469

    .line 655
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    const v4, 0x7f09013c

    .line 656
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    const v4, 0x7f09011a

    .line 657
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 659
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 664
    .end local v0    # "mOnClickCancel":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "mOnClickVerifyAccount":Landroid/content/DialogInterface$OnClickListener;
    :cond_6
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v2, p1, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1100(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    goto/16 :goto_0

    .line 669
    :cond_7
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 670
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$1408(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)I

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

    .line 595
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
