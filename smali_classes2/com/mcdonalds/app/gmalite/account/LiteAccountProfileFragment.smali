.class public Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteAccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private mBirthdateButton:Landroid/widget/TextView;

.field private mChangePassword:Landroid/view/View;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mEmail:Landroid/widget/TextView;

.field private mGender:Landroid/widget/TextView;

.field private mMobile:Landroid/widget/TextView;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private mOnClickDisableAccount:Landroid/content/DialogInterface$OnClickListener;

.field private mReady:Z

.field private mSignOutButton:Landroid/widget/Button;

.field private mUserName:Landroid/widget/TextView;

.field private mZipCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 183
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 393
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mOnClickDisableAccount:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    return-void
.end method

.method private config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 3
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v0, "config"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mZipCode:Landroid/widget/TextView;

    const-string v1, "zipcode"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->display(Landroid/view/View;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    const-string v1, "phoneNumber"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->display(Landroid/view/View;Ljava/lang/String;)V

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 236
    :cond_0
    return-void
.end method

.method private configCustomerProfile()V
    .locals 4

    .prologue
    const-string v2, "configCustomerProfile"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 605
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 606
    .local v1, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 608
    iget-boolean v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mReady:Z

    if-eqz v2, :cond_0

    .line 609
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 611
    :cond_0
    return-void
.end method

.method private configureDeleteAccount(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const-string v3, "configureDeleteAccount"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 161
    const v3, 0x7f110227

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, "deleteAccount":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 163
    .local v2, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAccountDeleteType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    move-result-object v0

    .line 165
    .local v0, "accountDeleteType":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;
    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    if-eq v0, v3, :cond_0

    .line 166
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget-object v3, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$6;->$SwitchMap$com$mcdonalds$sdk$modules$customer$CustomerProfile$AccountDeleteType:[I

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const v3, 0x7f09047c

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :pswitch_1
    const v3, 0x7f09047b

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deleteAccount()V
    .locals 3

    .prologue
    const-string v1, "deleteAccount"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Account Delete"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 358
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    sget-object v1, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$6;->$SwitchMap$com$mcdonalds$sdk$modules$customer$CustomerProfile$AccountDeleteType:[I

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAccountDeleteType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 368
    const-string v1, "Invalid Account Delete Type"

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 361
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->deleteAccountSoft()V

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->deleteAccountHard()V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteAccountHard()V
    .locals 3

    .prologue
    const-string v0, "deleteAccountHard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const-string v0, "Clicked Delete Account HARD"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09045b

    .line 432
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 433
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090468

    .line 434
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090461

    .line 435
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09045f

    .line 468
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 476
    return-void
.end method

.method private deleteAccountSoft()V
    .locals 3

    .prologue
    const-string v0, "deleteAccountSoft"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    const-string v0, "Clicked Deactivate Account SOFT"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090458

    .line 380
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090466

    .line 382
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090460

    .line 383
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mOnClickDisableAccount:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09045f

    .line 384
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 391
    return-void
.end method

.method private display(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "display"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private navigateToSection(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const-string v3, "navigateToSection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "fragmentName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 271
    .local v0, "container":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mcdonalds/app/ui/URLNavigationActivity;>;"
    const/16 v2, 0x29a

    .line 273
    .local v2, "requestCode":I
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 341
    const/16 v3, 0x29a

    if-eq v2, v3, :cond_1

    .line 343
    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 348
    :cond_0
    :goto_1
    return-void

    .line 277
    :pswitch_1
    sget-object v1, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->NAME:Ljava/lang/String;

    .line 278
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameActivity;

    .line 279
    const/16 v2, 0x7d1

    .line 281
    goto :goto_0

    .line 285
    :pswitch_2
    sget-object v1, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->NAME:Ljava/lang/String;

    .line 286
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileActivity;

    .line 287
    const/16 v2, 0x7d5

    .line 289
    goto :goto_0

    .line 293
    :pswitch_3
    sget-object v1, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->NAME:Ljava/lang/String;

    .line 294
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordActivity;

    .line 295
    const/16 v2, 0x7d3

    .line 297
    goto :goto_0

    .line 301
    :pswitch_4
    sget-object v1, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->NAME:Ljava/lang/String;

    .line 302
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeActivity;

    .line 303
    const/16 v2, 0x7d9

    .line 305
    goto :goto_0

    .line 309
    :pswitch_5
    sget-object v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->NAME:Ljava/lang/String;

    .line 310
    const-class v0, Lcom/mcdonalds/app/account/ChangeBirthdateActivity;

    .line 311
    const/16 v2, 0x7d7

    .line 313
    goto :goto_0

    .line 317
    :pswitch_6
    sget-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->NAME:Ljava/lang/String;

    .line 318
    const-class v0, Lcom/mcdonalds/app/account/ChangeGenderActivity;

    .line 319
    const/16 v2, 0x7d8

    .line 321
    goto :goto_0

    .line 325
    :pswitch_7
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->deleteAccount()V

    .line 326
    const/4 v1, 0x0

    .line 327
    goto :goto_0

    .line 330
    :pswitch_8
    const-string v1, "liteverifyemail"

    .line 331
    const-class v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationActivity;

    .line 332
    const/16 v2, 0x7d2

    .line 333
    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x7f11021b
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 11
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "populateUserFields"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/model/Register;->isSingleFieldName()Z

    move-result v6

    if-nez v6, :cond_0

    .line 549
    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 552
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "firstname"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 553
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "emailaddress"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->updateEmailField()V

    .line 563
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "phoneNumber"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 564
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v6, v7, :cond_7

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v6

    if-nez v6, :cond_7

    .line 567
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    const v7, 0x7f0201be

    invoke-virtual {v6, v9, v9, v7, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 573
    :cond_3
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "birthDate"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 574
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v10, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 577
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v0

    .line 579
    .local v0, "birthdate":Ljava/util/Calendar;
    if-eqz v0, :cond_8

    .line 580
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "birthdateText":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v1    # "birthdateText":Ljava/lang/String;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "gender"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 589
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "gender":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 595
    .end local v3    # "gender":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v6

    const-string v7, "zipcode"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 596
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mZipCode:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v6, 0x7f090a15

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, "zipcode":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mZipCode:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    .end local v5    # "zipcode":Ljava/lang/String;
    :cond_6
    return-void

    .line 569
    :cond_7
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    const v7, 0x7f02023a

    invoke-virtual {v6, v9, v9, v7, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 584
    .restart local v0    # "birthdate":Ljava/util/Calendar;
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_8
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09049e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 590
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_9
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0906dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 597
    :cond_a
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private updateEmailField()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "updateEmailField"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v1

    .line 620
    .local v1, "verificationType":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailVerified()Z

    move-result v0

    .line 621
    .local v0, "emailVerified":Z
    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 622
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    const v3, 0x7f0201be

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 623
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 626
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const v0, 0x7f09085a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const v0, 0x7f0904e9

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 221
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mReady:Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 480
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 482
    if-nez p3, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 488
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 492
    :pswitch_1
    const-string v7, "first"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "firstName":Ljava/lang/String;
    const-string v7, "last"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, "lastName":Ljava/lang/String;
    const-string v2, ""

    .line 498
    .local v2, "fullName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 499
    move-object v2, v1

    .line 502
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    .end local v1    # "firstName":Ljava/lang/String;
    .end local v2    # "fullName":Ljava/lang/String;
    .end local v4    # "lastName":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->updateEmailField()V

    goto :goto_0

    .line 517
    :pswitch_3
    const-string v7, "mobile"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, "phoneNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 523
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :pswitch_4
    const-string v7, "birthdate"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "birthdate":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    .end local v0    # "birthdate":Ljava/lang/String;
    :pswitch_5
    const-string v7, "gender"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "gender":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    .end local v3    # "gender":Ljava/lang/String;
    :pswitch_6
    const-string v7, "zipCode"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, "zipCode":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mZipCode:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onClick"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 251
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 253
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sign Out"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "modal"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v2, "signout"

    invoke-virtual {p0, v2, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 266
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->navigateToSection(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 105
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 107
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->configCustomerProfile()V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const v2, 0x7f0400c5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f11021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mUserName:Landroid/widget/TextView;

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v2, 0x7f11021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    .line 130
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v2, 0x7f11021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    .line 133
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v2, 0x7f11021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v2, 0x7f11021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mMobile:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f110220

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mChangePassword:Landroid/view/View;

    .line 141
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mChangePassword:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v2, 0x7f110228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    .line 144
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v2, 0x7f110224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mZipCode:Landroid/widget/TextView;

    .line 148
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->configureDeleteAccount(Landroid/view/View;)V

    .line 150
    const v2, 0x7f1102be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 116
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 212
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 213
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const-string v0, "update"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 616
    return-void
.end method
