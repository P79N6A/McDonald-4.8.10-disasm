.class public Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteChangeZipCodeFragment.java"

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
    .line 33
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mProfileUpdateListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 159
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeZipCodeFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeZipCodeFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeZipCodeFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeZipCodeFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mSaveButton:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const v0, 0x7f090867

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const v0, 0x7f090a16

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setUpdateListener(Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v1, 0x7f0400db

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mZipCode:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setupPostalCode(Landroid/widget/EditText;)V

    .line 72
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mSaveButton:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mSaveButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v0
.end method

.method public onFieldUpdate()V
    .locals 2

    .prologue
    const-string v0, "onFieldUpdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mSaveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->mValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    return-void
.end method
