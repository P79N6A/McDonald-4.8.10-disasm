.class public Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeEmailAddressFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;
.implements Ljava/util/Observer;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mEmailAddress:Landroid/widget/EditText;

.field private mEmailSendedView:Landroid/view/View;

.field private mNotVerifiedWarning:Landroid/view/View;

.field private mOnClickOkButton:Landroid/view/View$OnClickListener;

.field private final mOnClickVerify:Landroid/view/View$OnClickListener;

.field private mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mVerifyEmailButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "change_email"

    sput-object v0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mOnClickOkButton:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailAddressFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailSendedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailAddressFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->verify()V

    return-void
.end method

.method private verify()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "verify"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "mail":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/LoginManager;->resendVerification(I)V

    .line 160
    .end local v0    # "mail":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v0    # "mail":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->updateProfile()V

    goto :goto_0
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const v0, 0x7f0907ce

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    new-instance v3, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    invoke-direct {v3, v4, v2, v1, v1}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 100
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 106
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressVerified()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 107
    .local v0, "verified":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mNotVerifiedWarning:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_1
    return-void

    .end local v0    # "verified":Z
    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    .line 114
    .restart local v0    # "verified":Z
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mNotVerifiedWarning:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 62
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v1, 0x7f040090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f11021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    .line 78
    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mNotVerifiedWarning:Landroid/view/View;

    .line 80
    const v1, 0x7f110264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f110265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailSendedView:Landroid/view/View;

    .line 85
    const v1, 0x7f110266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mOnClickOkButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.disableInteraction"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailAddress:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 91
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 69
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 70
    return-void
.end method

.method public onFieldValidationStateChanged(Z)V
    .locals 4
    .param p1, "isValidated"    # Z

    .prologue
    const-string v0, "onFieldValidationStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mVerifyEmailButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "update"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    .local v0, "code":I
    const/16 v1, 0xbba

    if-ne v0, v1, :cond_1

    .line 125
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 126
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/util/LoginManager;->resendVerification(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->mEmailSendedView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
