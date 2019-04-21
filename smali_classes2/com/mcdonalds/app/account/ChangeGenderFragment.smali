.class public Lcom/mcdonalds/app/account/ChangeGenderFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeGenderFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;

.field private static mGender:Landroid/widget/Spinner;

.field private static mSaveButton:Landroid/view/View;


# instance fields
.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mFirstLoad:Z

.field private final mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mGendersAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickSave:Landroid/view/View$OnClickListener;

.field private mSelectedGender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeGenderFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeGenderFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSelectedGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/account/ChangeGenderFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSelectedGender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Landroid/widget/Spinner;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v1, "access$100"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGender:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ChangeGenderFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->loadSavedGender()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Landroid/widget/ArrayAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGendersAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mFirstLoad:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/account/ChangeGenderFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mFirstLoad:Z

    return p1
.end method

.method static synthetic access$500()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeGenderFragment"

    const-string v1, "access$500"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSaveButton:Landroid/view/View;

    return-object v0
.end method

.method private getGenderPosition(Ljava/lang/String;)I
    .locals 5
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "getGenderPosition"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGendersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 106
    .local v0, "position":I
    return v0
.end method

.method private loadSavedGender()V
    .locals 2

    .prologue
    const-string v0, "loadSavedGender"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSelectedGender:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSelectedGender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSelectedGender:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getGenderPosition(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->setGenderSelectedPicker(I)V

    .line 116
    :goto_1
    return-void

    .line 110
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->setGenderSelectedPicker(I)V

    goto :goto_1
.end method

.method private setGenderSelectedPicker(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const-string v0, "setGenderSelectedPicker"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGender:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const v0, 0x7f090860

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const v0, 0x7f0904eb

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 78
    const v1, 0x7f040091

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    sput-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGender:Landroid/widget/Spinner;

    .line 81
    sget-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGender:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f040137

    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getOptionFields()Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "gender"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGendersAdapter:Landroid/widget/ArrayAdapter;

    .line 86
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGendersAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    sget-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGender:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mGendersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->loadSavedGender()V

    .line 92
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSaveButton:Landroid/view/View;

    .line 93
    sget-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSaveButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object v1, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 59
    sget-object v0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mSaveButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment;->mFirstLoad:Z

    .line 61
    return-void
.end method
