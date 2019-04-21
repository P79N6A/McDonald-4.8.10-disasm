.class public Lcom/mcdonalds/app/customer/ValidationResendFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ValidationResendFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


# instance fields
.field private mContent:Landroid/view/View;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private final mCustomerUpdated:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mDoNotChangeContact:Z

.field private mIsMobile:Z

.field private final mOnClickResend:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/view/View;

.field private mResendButton:Landroid/view/View;

.field private final mResendListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mValidationInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 166
    new-instance v0, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;-><init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 184
    new-instance v0, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment$2;-><init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerUpdated:Lcom/mcdonalds/sdk/AsyncListener;

    .line 206
    new-instance v0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;-><init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mOnClickResend:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ValidationResendFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->hideProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ValidationResendFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->resend()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/ValidationResendFragment;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ValidationResendFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/ValidationResendFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ValidationResendFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    const-string v0, "hideProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method private resend()V
    .locals 3

    .prologue
    const-string v1, "resend"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 119
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->showProgress()V

    .line 123
    iget-boolean v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mIsMobile:Z

    if-eqz v1, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->updateMobile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->updateEmail(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0
.end method

.method private showProgress()V
    .locals 2

    .prologue
    const-string v0, "showProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method

.method private updateEmail(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v4, 0x1

    const-string v1, "updateEmail"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setActivationOption(I)V

    .line 137
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerUpdated:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private updateMobile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v1, "updateMobile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "mobile":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerUpdated:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    new-instance v2, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mIsMobile:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    :goto_0
    invoke-direct {v2, v3, v1, v4, v4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 87
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 90
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mIsMobile:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_1
    return-void

    .line 79
    .end local v0    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    .restart local v0    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_3
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v2, "validation_method"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "method":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mIsMobile:Z

    .line 48
    const-string v2, "do_not_change_contact"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mDoNotChangeContact:Z

    .line 50
    .end local v1    # "method":I
    :cond_0
    return-void

    .line 47
    .restart local v1    # "method":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-boolean v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mIsMobile:Z

    if-eqz v2, :cond_1

    const v0, 0x7f040108

    .line 57
    .local v0, "resourceId":I
    :goto_0
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1103af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    .line 61
    const v2, 0x7f1103b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendButton:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendButton:Landroid/view/View;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mOnClickResend:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x7f110276

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mContent:Landroid/view/View;

    .line 66
    const v2, 0x7f11027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mProgress:Landroid/view/View;

    .line 68
    iget-boolean v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mDoNotChangeContact:Z

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mValidationInput:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 71
    :cond_0
    return-object v1

    .line 56
    .end local v0    # "resourceId":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const v0, 0x7f040107

    goto :goto_0
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

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment;->mResendButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    return-void
.end method
