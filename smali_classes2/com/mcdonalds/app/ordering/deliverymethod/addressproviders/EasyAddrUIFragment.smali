.class public Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "EasyAddrUIFragment.java"

# interfaces
.implements Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;
.implements Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;
.implements Lhk/com/aisoft/easyaddrui/EditCallbackInterface;


# instance fields
.field private mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteButton:Landroid/view/MenuItem;

.field private mConfirmButton:Landroid/view/MenuItem;

.field private mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

.field private mIsEdit:Z

.field private mProgress:Landroid/view/View;

.field private mSaveButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 318
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Landroid/view/MenuItem;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.addressproviders.EasyAddrUIFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mSaveButton:Landroid/view/MenuItem;

    return-object v0
.end method

.method private addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .param p2, "aliasType"    # Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const-string v3, "addAddressElement"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;-><init>()V

    .line 307
    .local v0, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "elementValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;-><init>()V

    .line 310
    .local v1, "elementValue":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAliasType(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;)V

    .line 311
    invoke-virtual {v1, p3}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 312
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setValue(Ljava/util/List;)V

    .line 314
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method private filterNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "filterNull"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string p1, ""

    .line 144
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private onSavePress()V
    .locals 2

    .prologue
    const-string v0, "onSavePress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->btnSavePressAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :cond_0
    return-void
.end method

.method private showInitAlertBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "showInitAlertBox"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090338

    .line 232
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09033d

    .line 233
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090145

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 245
    return-void
.end method


# virtual methods
.method public onConfirmPress(Lhk/com/aisoft/easyaddrui/Address;Lhk/com/aisoft/easyaddrui/Customer;)V
    .locals 4
    .param p1, "address"    # Lhk/com/aisoft/easyaddrui/Address;
    .param p2, "customer"    # Lhk/com/aisoft/easyaddrui/Customer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onConfirmPress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mConfirmButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mSaveButton:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mSaveButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 259
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mIsEdit:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 290
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->addAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "addressData"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .line 76
    .local v0, "data":Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mIsEdit:Z

    .line 80
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mIsEdit:Z

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 82
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getCustomerAddresses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddresses:Ljava/util/List;

    .line 92
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 79
    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 85
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getAvailableTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getAvailableTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 89
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAllowPromotionsToAddress(Z)V

    .line 90
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressElements(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v1, "onCreateOptionsMenu"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 150
    const v1, 0x7f120001

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const v1, 0x7f110544

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 153
    .local v0, "deleteItem":Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mIsEdit:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    const v1, 0x7f110545

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mSaveButton:Landroid/view/MenuItem;

    .line 156
    const v1, 0x7f110547

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCompleteButton:Landroid/view/MenuItem;

    .line 157
    const v1, 0x7f110546

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mConfirmButton:Landroid/view/MenuItem;

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v2, 0x7f0400b5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 98
    .local v17, "v":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->setHasOptionsMenu(Z)V

    .line 99
    const v2, 0x7f1102a2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    const-string v3, "GPS"

    invoke-virtual {v2, v3}, Lhk/com/aisoft/easyaddrui/eaView;->setMode(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    .line 105
    .local v14, "configuration":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getEasyAddressLanguageTag()Ljava/lang/String;

    move-result-object v16

    .line 106
    .local v16, "lang":Ljava/lang/String;
    const-string v2, "connectors.EasyAddress.key"

    invoke-virtual {v14, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lhk/com/aisoft/easyaddrui/eaView;->loadEAView(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lhk/com/aisoft/easyaddrui/eaView;->setConfirmCallBack(Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    new-instance v3, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V

    invoke-virtual {v2, v3}, Lhk/com/aisoft/easyaddrui/eaView;->setSaveCallBack(Lhk/com/aisoft/easyaddrui/SaveCallbackInterface;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lhk/com/aisoft/easyaddrui/eaView;->setCompleteCallBack(Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lhk/com/aisoft/easyaddrui/eaView;->setEditCallBack(Lhk/com/aisoft/easyaddrui/EditCallbackInterface;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lhk/com/aisoft/easyaddrui/eaView;->setCurrentAddr(Lhk/com/aisoft/easyaddrui/Address;)V

    .line 121
    const v2, 0x7f1102a3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mProgress:Landroid/view/View;

    .line 123
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mIsEdit:Z

    if-eqz v2, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    move-object/from16 v18, v0

    new-instance v2, Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 125
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 126
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v7, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 127
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 128
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v9, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 129
    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v10, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 130
    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v11, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 131
    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v12, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 132
    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v13, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 133
    invoke-virtual {v12, v13}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    sget-object v19, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 134
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->filterNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v2 .. v13}, Lhk/com/aisoft/easyaddrui/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhk/com/aisoft/easyaddrui/eaView;->setCurrentAddr(Lhk/com/aisoft/easyaddrui/Address;)V

    .line 137
    :cond_0
    return-object v17
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v7, 0x7f090660

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v4, "onOptionsItemSelected"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 227
    :cond_0
    :goto_0
    return v3

    .line 165
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->onSavePress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->showInitAlertBox()V

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->btnCompletePressAction()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->showInitAlertBox()V

    goto :goto_0

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mEasyAddrView:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->btnConfirmPressAction()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 180
    :catch_2
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->showInitAlertBox()V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddresses:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, "newDefault":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 191
    .local v0, "addr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 193
    move-object v2, v0

    .line 197
    .end local v0    # "addr":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 198
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V

    invoke-virtual {v4, v2, v5, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setDefaultAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 212
    .end local v2    # "newDefault":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 213
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f0905d4

    const/4 v6, 0x0

    .line 214
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 220
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->mAddressListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f110544
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
