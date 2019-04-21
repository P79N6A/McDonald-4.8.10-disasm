.class public Lcom/mcdonalds/app/account/ModifyZipCodeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ModifyZipCodeFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private final mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnClickSave:Landroid/view/View$OnClickListener;

.field private final mProfileUpdateListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveButton:Landroid/view/View;

.field private mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mZipCode:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;-><init>(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;-><init>(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mProfileUpdateListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 144
    new-instance v0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$3;-><init>(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyZipCodeFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyZipCodeFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyZipCodeFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mProfileUpdateListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyZipCodeFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyZipCodeFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mSaveButton:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const v0, 0x7f090867

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const v0, 0x7f090a73

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setUpdateListener(Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;)V

    .line 91
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v1, 0x7f0400db

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    .line 71
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setupPostalCode(Landroid/widget/EditText;)V

    .line 73
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mSaveButton:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mSaveButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v0
.end method

.method public onFieldUpdate()V
    .locals 2

    .prologue
    const-string v0, "onFieldUpdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mSaveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    return-void
.end method
