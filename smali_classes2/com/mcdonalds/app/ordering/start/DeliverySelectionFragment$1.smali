.class Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;
.super Landroid/widget/BaseAdapter;
.source "DeliverySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    .line 65
    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040171

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "item":Landroid/view/View;
    const v4, 0x7f1104d5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "titleView":Landroid/widget/TextView;
    const v4, 0x7f1104d6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "valueView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 74
    if-nez p1, :cond_1

    .line 75
    const v4, 0x7f0901d1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v4, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$1;-><init>(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    :goto_0
    invoke-static {v1, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v4, "getView"

    invoke-static {p0, v4}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v5, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v1

    .line 85
    :cond_1
    const v4, 0x7f0901d3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_1
    new-instance v4, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$2;-><init>(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 90
    :cond_2
    const v4, 0x7f0901d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
