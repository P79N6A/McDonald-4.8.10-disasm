.class public Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChooseSearchMethodFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private final SUPPORT_ZIP_CODE_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 46
    const-string v0, "interface.register.supportsZipCode"

    iput-object v0, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->SUPPORT_ZIP_CODE_KEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.firstload.ChooseSearchMethodFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->showLocationServicesNotEnabledWarning()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.firstload.ChooseSearchMethodFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->startFindStoreActivity()V

    return-void
.end method

.method private showLocationServicesNotEnabledWarning()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "showLocationServicesNotEnabledWarning"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f090804

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f0904fd

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v0, v1, v2, v4}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 179
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Unable to get location"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private startFindStoreActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "startFindStoreActivity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "map_only"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-string v1, "select_closest"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v1, "set_current_store"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v1, "EXTRA_FIRST_LOAD"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-class v1, Lcom/mcdonalds/app/ordering/start/FindStoreActivity;

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const v0, 0x7f090879

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 55
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$1;-><init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialLoginCatalog(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 63
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 73
    const v7, 0x7f0400a8

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, "rootView":Landroid/view/View;
    const v7, 0x7f110292

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "addressSearchPrompt":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.register.supportsZipCode"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    const v7, 0x7f09009c

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_0
    const v7, 0x7f110291

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    .local v2, "chooseClosestButton":Landroid/widget/Button;
    new-instance v7, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;-><init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v7, 0x7f110293

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 116
    .local v4, "searchView":Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 117
    .local v6, "useDefaultAddress":Z
    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090a0a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setText(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getField()Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 121
    new-instance v7, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;

    invoke-direct {v7, p0, v4}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$3;-><init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V

    invoke-virtual {v4, v7}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 158
    .local v5, "showConfigChange":Z
    if-eqz v5, :cond_1

    .line 160
    const v7, 0x7f110294

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "changeConfig":Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 162
    new-instance v7, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$4;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$4;-><init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .end local v1    # "changeConfig":Landroid/view/View;
    :cond_1
    return-object v3

    .line 79
    .end local v2    # "chooseClosestButton":Landroid/widget/Button;
    .end local v4    # "searchView":Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
    .end local v5    # "showConfigChange":Z
    .end local v6    # "useDefaultAddress":Z
    :cond_2
    const v7, 0x7f09009d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
