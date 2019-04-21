.class public Lcom/mcdonalds/app/account/ResetPasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ResetPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mEmail:Landroid/widget/EditText;

.field private mEmailAddress:Ljava/lang/String;

.field private mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mMobile:Landroid/widget/EditText;

.field private mMobileNumber:Ljava/lang/String;

.field private mMobileValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mRegisterButton:Landroid/view/View;

.field private mResetPasswordButton:Landroid/view/View;

.field private final mResetPasswordListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/mcdonalds/app/account/ResetPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 149
    new-instance v0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;-><init>(Lcom/mcdonalds/app/account/ResetPasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ResetPasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ResetPasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 4

    .prologue
    const-string v2, "hideKeyboard"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 185
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 189
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isUseEmailAsUserName()Z
    .locals 2

    .prologue
    const-string v0, "isUseEmailAsUserName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.useEmailAsUsername"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private performSubmitAction()V
    .locals 5

    .prologue
    const-string v0, "performSubmitAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->hideKeyboard()V

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmail:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailAddress:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobile:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileNumber:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailAddress:Ljava/lang/String;

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileNumber:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 138
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0906ab

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private refresh()V
    .locals 3

    .prologue
    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 112
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    return-void

    .line 110
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const v0, 0x7f09087c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const v0, 0x7f090503

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->isUseEmailAsUserName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setUpdateListener(Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobile:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 91
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setUpdateListener(Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobile:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobileValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->refresh()V

    .line 97
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmail:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmailValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->performSubmitAction()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mRegisterButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start Registration"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideTermsAndConditionsView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-class v0, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 124
    :cond_2
    const-class v0, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 60
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Forgot Password Simple Form"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setFormName(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v1, 0x7f04010a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f11021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mEmail:Landroid/widget/EditText;

    .line 69
    const v1, 0x7f1103b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mMobile:Landroid/widget/EditText;

    .line 70
    const v1, 0x7f1102cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mResetPasswordButton:Landroid/view/View;

    .line 72
    const v1, 0x7f1103bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mRegisterButton:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment;->mRegisterButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object v0
.end method

.method public onFieldUpdate()V
    .locals 2

    .prologue
    const-string v0, "onFieldUpdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->refresh()V

    .line 106
    return-void
.end method
