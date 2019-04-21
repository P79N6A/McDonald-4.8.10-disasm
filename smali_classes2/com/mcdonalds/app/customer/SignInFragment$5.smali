.class Lcom/mcdonalds/app/customer/SignInFragment$5;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignInFragment;

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 17
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v14, "onResponse"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    const/16 v16, 0x2

    aput-object p3, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 527
    if-nez p3, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    if-eqz v14, :cond_1c

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 531
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 539
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 541
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 547
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 550
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$200(Lcom/mcdonalds/app/customer/SignInFragment;)V

    .line 834
    :goto_0
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/mcdonalds/app/util/LanguageUtil;->setPrefRememberLogin(Z)V

    .line 924
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1300(Lcom/mcdonalds/app/customer/SignInFragment;)I

    move-result v14

    if-eqz v14, :cond_3

    .line 926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$300(Lcom/mcdonalds/app/customer/SignInFragment;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1300(Lcom/mcdonalds/app/customer/SignInFragment;)I

    move-result v15

    if-lt v14, v15, :cond_3

    .line 927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$302(Lcom/mcdonalds/app/customer/SignInFragment;I)I

    .line 928
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$000(Lcom/mcdonalds/app/customer/SignInFragment;)V

    .line 932
    :cond_3
    return-void

    .line 553
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSocialAccountLoginRegistered()Z

    move-result v14

    if-nez v14, :cond_5

    .line 556
    new-instance v10, Lcom/mcdonalds/app/customer/SignInFragment$5$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/mcdonalds/app/customer/SignInFragment$5$1;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 574
    .local v10, "onClick":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f090574

    .line 575
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    const v15, 0x7f09070c

    .line 576
    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f090682

    .line 577
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09011a

    .line 578
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 579
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 580
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$308(Lcom/mcdonalds/app/customer/SignInFragment;)I

    goto/16 :goto_0

    .line 582
    .end local v10    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v14

    if-nez v14, :cond_8

    .line 584
    new-instance v10, Lcom/mcdonalds/app/customer/SignInFragment$5$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/mcdonalds/app/customer/SignInFragment$5$2;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 638
    .restart local v10    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.useMobileNumberRegisterOnly"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v13

    .line 639
    .local v13, "useMobileRegisterOnly":Z
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v14

    if-nez v14, :cond_6

    if-eqz v13, :cond_7

    .line 640
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a9

    .line 641
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a8

    .line 642
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09012c

    .line 643
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09011a

    .line 644
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 645
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 646
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 656
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$308(Lcom/mcdonalds/app/customer/SignInFragment;)I

    goto/16 :goto_0

    .line 648
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a7

    .line 649
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a6

    .line 650
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09012c

    .line 651
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09011a

    .line 652
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 653
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 654
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_2

    .line 659
    .end local v10    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    .end local v13    # "useMobileRegisterOnly":Z
    :cond_8
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v14

    new-instance v15, Lcom/mcdonalds/app/customer/SignInFragment$5$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/customer/SignInFragment$5$3;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->persistProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSubscribedToOffers()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_b

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$400(Lcom/mcdonalds/app/customer/SignInFragment;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$500(Lcom/mcdonalds/app/customer/SignInFragment;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 674
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    .line 675
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setReceivePromotions(Ljava/lang/Boolean;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v14, "offers"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    invoke-static {v15, v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$602(Lcom/mcdonalds/app/customer/SignInFragment;Lcom/mcdonalds/sdk/modules/offers/OffersModule;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$700(Lcom/mcdonalds/app/customer/SignInFragment;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v11, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$700(Lcom/mcdonalds/app/customer/SignInFragment;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    .line 681
    .local v8, "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getId()Ljava/lang/Integer;

    move-result-object v3

    .line 683
    .local v3, "categoryNum":Ljava/lang/Integer;
    new-instance v9, Lcom/mcdonalds/app/account/OfferData;

    invoke-direct {v9}, Lcom/mcdonalds/app/account/OfferData;-><init>()V

    .line 684
    .local v9, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v9, v3}, Lcom/mcdonalds/app/account/OfferData;->setId(Ljava/lang/Integer;)V

    .line 685
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/account/OfferData;->setDescription(Ljava/lang/String;)V

    .line 686
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 688
    invoke-virtual {v9}, Lcom/mcdonalds/app/account/OfferData;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 691
    .end local v3    # "categoryNum":Ljava/lang/Integer;
    .end local v8    # "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .end local v9    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    .line 697
    .end local v11    # "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v15, Lcom/mcdonalds/app/customer/SignInFragment$5$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/customer/SignInFragment$5$4;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 713
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isFirstTimeLoginOnDevice(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Z

    move-result v12

    .line 715
    .local v12, "showOneLastThing":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.signin.hidePushNotificationScreen"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    .line 717
    .local v5, "hidePushNotificationScreen":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    .line 718
    invoke-virtual {v14}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    const v15, 0x7f1100d3

    .line 719
    invoke-virtual {v14, v15}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 721
    .local v7, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 725
    .local v2, "arguments":Landroid/os/Bundle;
    if-nez v2, :cond_c

    .line 726
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "arguments":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 729
    .restart local v2    # "arguments":Landroid/os/Bundle;
    :cond_c
    const-string v14, "modal"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 730
    const-string v14, "modal"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 733
    :cond_d
    if-eqz v12, :cond_10

    if-nez v5, :cond_10

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    sget-object v15, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->NAME:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/customer/push/PushNotificationRequestActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    .line 806
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$800(Lcom/mcdonalds/app/customer/SignInFragment;)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1100(Lcom/mcdonalds/app/customer/SignInFragment;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    invoke-virtual {v14, v15, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 818
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    instance-of v14, v14, Lcom/mcdonalds/app/MainActivity;

    if-nez v14, :cond_e

    .line 821
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 825
    :cond_e
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 828
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.isMSAEnabled"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 829
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/msa/MSASettings;->scheduleNextAlarm(Landroid/content/Context;)V

    .line 832
    :cond_f
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v14

    const-string v15, "Signed-in"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto/16 :goto_0

    .line 740
    :cond_10
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.signin.autoEnrollPushNotificationByDefault"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 741
    new-instance v14, Lcom/mcdonalds/app/customer/SignInFragment$5$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/customer/SignInFragment$5$5;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;)V

    invoke-static {v14}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 754
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailTakeOver()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v15, "email_take_over"

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 761
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileTakeOver()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v15, "mobile_take_over"

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 768
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v14

    if-nez v14, :cond_14

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.hideMobileVerificatinScreen"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v15, "mobile_verify"

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 775
    :cond_14
    const-string v14, "EXTRA_SAVING_FAVORITE"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 779
    const-string v14, "saving_fav_detail"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 784
    .local v6, "isDetail":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    if-eqz v6, :cond_15

    sget-object v14, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    :goto_6
    invoke-static {v15, v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    if-eqz v6, :cond_16

    const-class v14, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    :goto_7
    invoke-static {v15, v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 784
    :cond_15
    const-string v14, "store_locator"

    goto :goto_6

    .line 785
    :cond_16
    const-class v14, Lcom/mcdonalds/app/MainActivity;

    goto :goto_7

    .line 787
    .end local v6    # "isDetail":Z
    :cond_17
    const-string v14, "GO_TO_MSA"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v15, "msa_logged_in"

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/MainActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 792
    :cond_18
    const-string v14, "EXTRA_SAVING_FAVORITE_PRODUCT"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 794
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 801
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-string v15, "dashboard"

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v15, Lcom/mcdonalds/app/MainActivity;

    invoke-static {v14, v15}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;

    goto/16 :goto_4

    .line 811
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1100(Lcom/mcdonalds/app/customer/SignInFragment;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 812
    const-string v14, "NEED_TO_RETURN_TO_BASKET"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 815
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->access$1200(Lcom/mcdonalds/app/customer/SignInFragment;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 837
    .end local v2    # "arguments":Landroid/os/Bundle;
    .end local v5    # "hidePushNotificationScreen":Z
    .end local v7    # "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    .end local v12    # "showOneLastThing":Z
    :cond_1c
    move-object/from16 v0, p3

    instance-of v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v14, :cond_20

    move-object/from16 v4, p3

    .line 838
    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    .line 841
    .local v4, "exp":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    new-instance v10, Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/mcdonalds/app/customer/SignInFragment$5$6;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 894
    .restart local v10    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v14

    const/16 v15, -0x8ab

    if-ne v14, v15, :cond_1d

    .line 895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a7

    .line 896
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a6

    .line 897
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09012c

    .line 898
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09011a

    .line 899
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 900
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 901
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 902
    :cond_1d
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v14

    const/16 v15, -0x8a5

    if-ne v14, v15, :cond_1e

    .line 903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a9

    .line 904
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f0906a8

    .line 905
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09012c

    .line 906
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v16, 0x7f09011a

    .line 907
    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 908
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 909
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 910
    :cond_1e
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v14

    const/16 v15, -0x408

    if-ne v14, v15, :cond_1f

    .line 911
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/app/customer/SignInActivity;

    new-instance v15, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-direct {v15}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;-><init>()V

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/customer/SignInActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 914
    :cond_1f
    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$308(Lcom/mcdonalds/app/customer/SignInFragment;)I

    goto/16 :goto_1

    .line 919
    .end local v4    # "exp":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    .end local v10    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_20
    invoke-static/range {p3 .. p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-static {v14}, Lcom/mcdonalds/app/customer/SignInFragment;->access$308(Lcom/mcdonalds/app/customer/SignInFragment;)I

    goto/16 :goto_1
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

    .line 520
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignInFragment$5;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
