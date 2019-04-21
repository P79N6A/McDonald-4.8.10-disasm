.class public Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "TableServiceFragment.java"


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field protected mFinishAndPayButton:Landroid/widget/Button;

.field private mIsZoneService:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

.field protected mTableServiceTouchableLayout:Landroid/view/View;

.field protected mUserInputIdEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$1;-><init>(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.TableServiceFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->isNumberEnteredValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.TableServiceFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->setupOrderandProceed(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.TableServiceFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->showInvalidInputAlert()V

    return-void
.end method

.method private isNumberEnteredValid()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "isNumberEnteredValid"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "userInputString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 84
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "userInputId":I
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mIsZoneService:Z

    if-eqz v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/TableService;->getZoneDefinitionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    .line 87
    .local v2, "zoneDefinitions":Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->getZoneId()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    .end local v0    # "userInputId":I
    .end local v2    # "zoneDefinitions":Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    :cond_1
    :goto_0
    return v3

    .restart local v0    # "userInputId":I
    :cond_2
    move v3, v4

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    if-lez v0, :cond_4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/TableService;->getTableServiceLocatorMaxNumberValue()I

    move-result v5

    if-le v0, v5, :cond_1

    :cond_4
    move v3, v4

    .line 96
    goto :goto_0

    .end local v0    # "userInputId":I
    :cond_5
    move v3, v4

    .line 100
    goto :goto_0
.end method

.method private setupOrderandProceed(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const-string v2, "setupOrderandProceed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;-><init>()V

    .line 142
    .local v1, "orderTableService":Lcom/mcdonalds/sdk/modules/models/OrderTableService;
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mIsZoneService:Z

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->setTablseServiceZoneId(I)V

    .line 148
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 149
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderTableService(Lcom/mcdonalds/sdk/modules/models/OrderTableService;)V

    .line 151
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 153
    return-void

    .line 145
    .end local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->setTableTagId(I)V

    goto :goto_0
.end method

.method private showInvalidInputAlert()V
    .locals 4

    .prologue
    const-string v1, "showInvalidInputAlert"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment$2;-><init>(Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;)V

    .line 131
    .local v0, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09073e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09073f

    .line 133
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 137
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Invalid input"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TableService;->isTableServiceLocatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const v3, 0x7f040123

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f11040c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    .line 65
    const v3, 0x7f1100dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mFinishAndPayButton:Landroid/widget/Button;

    .line 66
    const v3, 0x7f11040a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableServiceTouchableLayout:Landroid/view/View;

    .line 67
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mIsZoneService:Z

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TableService;->getTableServiceLocatorMaxNumberValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "tableServiceLocatorMaxNumberValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 71
    .local v0, "maxLength":I
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mUserInputIdEditText:Landroid/widget/EditText;

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    .end local v0    # "maxLength":I
    .end local v1    # "tableServiceLocatorMaxNumberValue":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mFinishAndPayButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mTableServiceTouchableLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v2

    .line 60
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const v3, 0x7f040124

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .restart local v2    # "view":Landroid/view/View;
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/checkin/TableServiceFragment;->mIsZoneService:Z

    goto :goto_0
.end method
