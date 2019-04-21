.class public Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteChangeMobileFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;
.implements Ljava/util/Observer;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mMobileNumber:Landroid/widget/EditText;

.field private mNotVerifiedComponent:Landroid/widget/LinearLayout;

.field private mOnClickOk:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnClickSaveChanges:Landroid/view/View$OnClickListener;

.field private final mOnClickVerify:Landroid/view/View$OnClickListener;

.field private mSaveChanges:Landroid/view/View;

.field private mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mVerifyNumber:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "gmalite_change_mobile"

    sput-object v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mOnClickSaveChanges:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mOnClickOk:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeMobileFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->updatePhoneNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeMobileFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeMobileFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeMobileFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method private updatePhoneNumber()V
    .locals 6

    .prologue
    const-string v4, "updatePhoneNumber"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mSaveChanges:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.register.phoneNumberCountryCode"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "currentPhone":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 179
    .local v3, "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Save"

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f09048f

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v5, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 219
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "currentPhone":Ljava/lang/String;
    .end local v2    # "mobile":Ljava/lang/String;
    .end local v3    # "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const v0, 0x7f090863

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const v0, 0x7f0904ed

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 96
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 97
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const v3, 0x7f0400c6

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "v":Landroid/view/View;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.register.phoneNumberShowCountryCode"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 113
    .local v1, "showCountryCode":Z
    if-eqz v1, :cond_0

    .line 114
    const v3, 0x7f1102bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/EditTextPhone;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    .line 115
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.register.phoneNumberCountryCode"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    check-cast v3, Lcom/mcdonalds/app/widget/EditTextPhone;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setCountryCode(Ljava/lang/String;)V

    .line 121
    .end local v0    # "countryCode":Ljava/lang/String;
    :goto_0
    const v3, 0x7f1102bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mNotVerifiedComponent:Landroid/widget/LinearLayout;

    .line 123
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mNotVerifiedComponent:Landroid/widget/LinearLayout;

    const v4, 0x7f1102bd

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mVerifyNumber:Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mVerifyNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mOnClickVerify:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v3, 0x7f11026c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mSaveChanges:Landroid/view/View;

    .line 127
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mSaveChanges:Landroid/view/View;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mOnClickSaveChanges:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object v2

    .line 118
    :cond_0
    const v3, 0x7f11026b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mMobileNumber:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 104
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 105
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

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mSaveChanges:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v0

    .line 150
    .local v0, "verified":Z
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mNotVerifiedComponent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->mNotVerifiedComponent:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
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

    .line 160
    return-void
.end method
