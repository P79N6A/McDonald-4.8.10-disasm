.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field final synthetic val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field final synthetic val$schedDeliveryTimeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Landroid/widget/TextView;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v3, 0x6

    const/4 v9, 0x1

    const/4 v6, 0x0

    const-string v1, "onClick"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1902(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 649
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 650
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 658
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 659
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 660
    .local v4, "minHour":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 661
    .local v5, "minMinute":I
    const/16 v7, 0x18

    .line 662
    .local v7, "maxHour":I
    const/4 v8, 0x0

    .line 680
    .local v8, "maxMinute":I
    :goto_0
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 681
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0b008a

    new-instance v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;)V

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 703
    .local v0, "rangeTimePickerDialog":Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    const v2, 0x7f0901dd

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 707
    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v10}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I

    move-result v10

    const v11, 0xea60

    mul-int/2addr v10, v11

    int-to-long v10, v10

    .line 706
    invoke-static {v9, v10, v11}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v6

    .line 704
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {v0, v4, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->setMin(II)V

    .line 713
    invoke-virtual {v0, v7, v8}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->setMax(II)V

    .line 715
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;->show()V

    .line 716
    return-void

    .line 664
    .end local v0    # "rangeTimePickerDialog":Lcom/mcdonalds/app/ordering/deliverymethod/RangeTimePickerDialog;
    .end local v4    # "minHour":I
    .end local v5    # "minMinute":I
    .end local v7    # "maxHour":I
    .end local v8    # "maxMinute":I
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 667
    const/4 v4, 0x0

    .line 668
    .restart local v4    # "minHour":I
    const/4 v5, 0x0

    .line 669
    .restart local v5    # "minMinute":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 670
    .restart local v7    # "maxHour":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .restart local v8    # "maxMinute":I
    goto/16 :goto_0

    .line 674
    .end local v4    # "minHour":I
    .end local v5    # "minMinute":I
    .end local v7    # "maxHour":I
    .end local v8    # "maxMinute":I
    :cond_1
    const/4 v4, 0x0

    .line 675
    .restart local v4    # "minHour":I
    const/4 v5, 0x0

    .line 676
    .restart local v5    # "minMinute":I
    const/16 v7, 0x18

    .line 677
    .restart local v7    # "maxHour":I
    const/4 v8, 0x0

    .restart local v8    # "maxMinute":I
    goto/16 :goto_0
.end method
