.class public Lcom/mcdonalds/app/account/ChangeMobileFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeMobileFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;
.implements Ljava/util/Observer;


# static fields
.field public static NAME:Ljava/lang/String;

.field private static mSaveButton:Landroid/view/View;


# instance fields
.field private OriginalMobileNumber:Ljava/lang/String;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mMobileNumber:Landroid/widget/EditText;

.field private mNotVerifiedWarning:Landroid/view/View;

.field private mOnClickOkButton:Landroid/view/View$OnClickListener;

.field private final mOnClickSave:Landroid/view/View$OnClickListener;

.field private final mOnClickVerify:Landroid/view/View$OnClickListener;

.field private mSmsSendedView:Landroid/view/View;

.field private mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mVerifyMobileButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "change_mobile"

    sput-object v0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/mcdonalds/app/account/ChangeMobileFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickOkButton:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, Lcom/mcdonalds/app/account/ChangeMobileFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;-><init>(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeMobileFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSmsSendedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeMobileFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->verify()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeMobileFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeMobileFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeMobileFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->OriginalMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method private verify()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const-string v1, "verify"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "mobile":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/LoginManager;->resendVerification(I)V

    .line 207
    .end local v0    # "mobile":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "mobile":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 200
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->updateProfile()V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const v0, 0x7f090863

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const v0, 0x7f09042e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->validate()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 79
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v1, 0x7f040093

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f11026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    .line 98
    const v1, 0x7f11026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mNotVerifiedWarning:Landroid/view/View;

    .line 100
    const v1, 0x7f11026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f11026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSmsSendedView:Landroid/view/View;

    .line 105
    const v1, 0x7f110266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickOkButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.disableInteraction"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->OriginalMobileNumber:Ljava/lang/String;

    .line 113
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    .line 114
    sget-object v1, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 86
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 87
    return-void
.end method

.method public onFieldValidationStateChanged(Z)V
    .locals 5
    .param p1, "isValidated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onFieldValidationStateChanged"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->OriginalMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 179
    sget-object v0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v1, "update"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "code":I
    const/16 v1, 0xbba

    if-ne v0, v1, :cond_1

    .line 165
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 166
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/util/LoginManager;->resendVerification(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSmsSendedView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public validate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "validate"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v3, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5, v1, v1}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 131
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 136
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 137
    .local v0, "verified":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mNotVerifiedWarning:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->OriginalMobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    sget-object v2, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    :goto_2
    return-void

    .end local v0    # "verified":Z
    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    .line 145
    .restart local v0    # "verified":Z
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mVerifyMobileButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mNotVerifiedWarning:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_2
    sget-object v1, Lcom/mcdonalds/app/account/ChangeMobileFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method
