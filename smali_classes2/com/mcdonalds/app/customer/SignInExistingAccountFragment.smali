.class public Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;
.super Lcom/mcdonalds/app/customer/SignInFragment;
.source "SignInExistingAccountFragment.java"


# instance fields
.field private SocialServiceAuthenticationID:I

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mDoNotHaveAccount:Landroid/widget/Button;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mManager:Lcom/mcdonalds/app/util/LoginManager;

.field mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mPassword:Ljava/lang/String;

.field private mPasswordTextView:Landroid/widget/EditText;

.field private mSocialContainer:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInExistingAccountFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->SocialServiceAuthenticationID:I

    return v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInExistingAccountFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->acces_token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInExistingAccountFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->openid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Lcom/mcdonalds/app/util/LoginManager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInExistingAccountFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/mcdonalds/app/customer/SignInFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 76
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v1, :cond_0

    .line 77
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 78
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 80
    .end local v0    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mUserName:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mPassword:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->SocialServiceAuthenticationID:I

    .line 87
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->acces_token:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->openid:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f1102ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mSocialContainer:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mSocialContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v1, 0x7f1102cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mTitle:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const v1, 0x7f11021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 113
    const v1, 0x7f1102ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mPasswordTextView:Landroid/widget/EditText;

    .line 115
    const v1, 0x7f1103b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mDoNotHaveAccount:Landroid/widget/Button;

    .line 116
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mDoNotHaveAccount:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    return-object v0
.end method

.method protected onDoNotHaveAccount()V
    .locals 2

    .prologue
    const-string v0, "onDoNotHaveAccount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->forceRegister(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mEmailEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mEmailEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mDoNotHaveAccount:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$1;-><init>(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method protected onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 5
    .param p1, "socialLoginInfo"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const-string v2, "onSubmitDoSignin"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    .line 193
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f0901ff

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 154
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 156
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 158
    .local v1, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 162
    new-instance v2, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;-><init>(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method
