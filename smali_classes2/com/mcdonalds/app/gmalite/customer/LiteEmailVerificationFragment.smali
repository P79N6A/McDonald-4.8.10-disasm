.class public Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteEmailVerificationFragment.java"


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private mOnClickResendEmailLink:Landroid/view/View$OnClickListener;

.field private mOnClickVerifyOk:Landroid/content/DialogInterface$OnClickListener;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mResendEmailLink:Landroid/widget/TextView;

.field private mUserEmail:Landroid/widget/TextView;

.field private mVerificationCode:Ljava/lang/String;

.field private mWelcomeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickVerifyOk:Landroid/content/DialogInterface$OnClickListener;

    .line 249
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickResendEmailLink:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteEmailVerificationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickVerifyOk:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteEmailVerificationFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->handleEmailVerificationError(Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteEmailVerificationFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteEmailVerificationFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->resendEmailVerification()V

    return-void
.end method

.method private handleEmailVerificationError(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v1, "handleEmailVerificationError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090338

    .line 229
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09046c

    .line 231
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090462

    .line 232
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method private resendEmailVerification()V
    .locals 3

    .prologue
    const-string v1, "resendEmailVerification"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 262
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f090492

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v2, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$6;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 285
    return-void
.end method

.method private verifyEmail()V
    .locals 4

    .prologue
    const-string v1, "verifyEmail"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const-string v1, "Verifying Email"

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Verify Account"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f090493

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 180
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mVerificationCode:Ljava/lang/String;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->verifyEmail(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 200
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const v0, 0x7f090866

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 71
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 83
    const v5, 0x7f0400ca

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f1102bf

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    .line 86
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "userName":Ljava/lang/String;
    const v5, 0x7f0904c1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "welcomeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "email":Ljava/lang/String;
    const v5, 0x7f11021e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mUserEmail:Landroid/widget/TextView;

    .line 93
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mUserEmail:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    .end local v4    # "welcomeString":Ljava/lang/String;
    :cond_0
    const v5, 0x7f1102c1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mResendEmailLink:Landroid/widget/TextView;

    .line 97
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mResendEmailLink:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickResendEmailLink:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v5, 0x7f1102be

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object v3
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 138
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 140
    .local v2, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09070b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "welcomeText":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->resendEmailVerification()V

    goto :goto_0

    .line 156
    :cond_3
    const/4 v3, 0x0

    .line 157
    .local v3, "uriCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 158
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 160
    const-string v5, "Uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "data":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 163
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_4
    if-eqz v1, :cond_5

    .line 164
    const-string v5, "verification_code"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v3, ""

    .end local v3    # "uriCode":Ljava/lang/String;
    :cond_6
    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mVerificationCode:Ljava/lang/String;

    .line 168
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->mVerificationCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->verifyEmail()V

    goto :goto_0
.end method
