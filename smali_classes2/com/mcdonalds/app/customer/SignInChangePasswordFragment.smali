.class public Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "SignInChangePasswordFragment.java"


# instance fields
.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mInitialPasswordCriteriaMet:Z

.field private mNewPasswordEditText:Landroid/widget/EditText;

.field mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mPassword:Ljava/lang/String;

.field private mSubmitButton:Landroid/widget/Button;

.field private mUserName:Ljava/lang/String;

.field private mVerifyPasswordCriteriaMet:Z

.field private mVerifyPasswordEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mInitialPasswordCriteriaMet:Z

    .line 64
    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordCriteriaMet:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mInitialPasswordCriteriaMet:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-boolean p1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mInitialPasswordCriteriaMet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordCriteriaMet:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-boolean p1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordCriteriaMet:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->checkPwdMatch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->areBothPasswordsValid()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->onSubmitDoChangePassword()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInChangePasswordFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method private areBothPasswordsValid()V
    .locals 2

    .prologue
    const-string v0, "areBothPasswordsValid"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mInitialPasswordCriteriaMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordCriteriaMet:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->checkPwdMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 381
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPwdMatch()Z
    .locals 4

    .prologue
    const-string v2, "checkPwdMatch"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "pwd":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "cfmPwd":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 377
    .end local v0    # "cfmPwd":Ljava/lang/String;
    .end local v1    # "pwd":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onSubmitDoChangePassword()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v3, "onSubmitDoChangePassword"

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "newPassword":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "New Password"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090613

    .line 304
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0905d4

    .line 305
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 306
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 309
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Password doesn\'t match existing"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f0901ed

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 321
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 323
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 324
    .local v2, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setNewPassword(Ljava/lang/String;)V

    .line 328
    new-instance v3, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$6;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const v0, 0x7f0908aa

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 78
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v1, :cond_0

    .line 81
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 82
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 85
    .end local v0    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mUserName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mPassword:Ljava/lang/String;

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->setHasOptionsMenu(Z)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 94
    const v0, 0x7f120015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f1103b7

    .line 125
    const v5, 0x7f04010e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, "rootView":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    .local v1, "mEmailTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v5, 0x7f1103b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    .local v2, "mPasswordTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "forget_password":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 135
    new-instance v5, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$1;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v5, 0x7f1103b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    .line 154
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$2;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$2;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    const v5, 0x7f1103ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    .line 202
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$3;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$3;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    const v5, 0x7f1103bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    .line 251
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v6, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$4;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$4;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v5, 0x7f1103bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 259
    .local v3, "registerButton":Landroid/widget/Button;
    new-instance v5, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$5;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$5;-><init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-object v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onOptionsItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 278
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 279
    return-void
.end method
