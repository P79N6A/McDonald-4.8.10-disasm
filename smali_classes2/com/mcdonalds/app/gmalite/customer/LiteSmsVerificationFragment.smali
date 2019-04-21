.class public Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteSmsVerificationFragment.java"


# instance fields
.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private mOnClickResendSMSLink:Landroid/view/View$OnClickListener;

.field private mOnClickSubmitSMSCodeButton:Landroid/view/View$OnClickListener;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mResendSMSLink:Landroid/widget/TextView;

.field private mSMSCodeInput:Landroid/widget/EditText;

.field private mSubmitSMSCodeButton:Landroid/widget/Button;

.field private mUserPhoneNumber:Landroid/widget/TextView;

.field private mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

.field private mWelcomeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 160
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickSubmitSMSCodeButton:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickResendSMSLink:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSmsVerificationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSubmitSMSCodeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSmsVerificationFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSMSCodeInput:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const v0, 0x7f090866

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 71
    const v5, 0x7f040112

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 74
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "LiteSmsVerificationFragment super.onCreateView is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_0
    const v5, 0x7f1102bf

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "userName":Ljava/lang/String;
    const v5, 0x7f0904c1

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "welcomeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v5, 0x7f1103c9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mUserPhoneNumber:Landroid/widget/TextView;

    .line 83
    const v5, 0x7f1103ca

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSMSCodeInput:Landroid/widget/EditText;

    .line 85
    new-instance v2, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSMSCodeInput:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-direct {v2, v5, v6, v7, v7}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 91
    .local v2, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 92
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSMSCodeInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    const v5, 0x7f1103c8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSubmitSMSCodeButton:Landroid/widget/Button;

    .line 95
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mSubmitSMSCodeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickSubmitSMSCodeButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v5, 0x7f1103cc

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mResendSMSLink:Landroid/widget/TextView;

    .line 98
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mResendSMSLink:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickResendSMSLink:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v5, 0x7f1102be

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object v3
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 144
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 146
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 148
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09070b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "welcomeText":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mWelcomeTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->mUserPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 209
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    return-void
.end method
