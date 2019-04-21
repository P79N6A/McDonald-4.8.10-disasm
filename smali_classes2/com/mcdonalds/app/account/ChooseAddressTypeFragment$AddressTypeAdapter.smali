.class Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAddressTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/AddressType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;)V
    .locals 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->this$0:Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;

    .line 95
    invoke-virtual {p1}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040031

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    :cond_0
    const-class v1, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;

    invoke-static {p2, v1, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 106
    const v1, 0x7f1100f1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChooseAddressTypeFragment$AddressTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressLabel(Lcom/mcdonalds/sdk/modules/models/AddressType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v1, "getView"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2
.end method
