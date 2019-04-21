.class public Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteSmsVerificationEnterCodeFragment.java"


# instance fields
.field private mManager:Lcom/mcdonalds/app/util/LoginManager;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

.field private mValidations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/widget/ValidationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 167
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 174
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSmsVerificationEnterCodeFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->validateData()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSmsVerificationEnterCodeFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mValidations:Landroid/util/SparseArray;

    return-object v0
.end method

.method private validateData()V
    .locals 6

    .prologue
    const-string v4, "validateData"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 209
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 210
    .local v1, "key":I
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 212
    .local v3, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    .end local v1    # "key":I
    .end local v3    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    return-void

    .line 207
    .restart local v1    # "key":I
    .restart local v3    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 55
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v1, 0x7f040113

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LiteSmsVerificationFragment super.onCreateView is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 202
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    return-void
.end method
