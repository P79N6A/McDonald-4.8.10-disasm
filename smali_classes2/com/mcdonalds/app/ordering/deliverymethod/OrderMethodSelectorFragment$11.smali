.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;
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

.field final synthetic val$schedDeliveryDateText:Landroid/widget/TextView;

.field final synthetic val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field final synthetic val$schedDeliveryTimeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Landroid/widget/TextView;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object p4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryDateText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string v1, "onClick"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v12

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v12}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2002(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 577
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v12}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1902(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 578
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v12}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 580
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09016f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 583
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 584
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v1, v12}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 588
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v1, v12}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    new-instance v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;)V

    .line 611
    .local v3, "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 612
    .local v7, "calendar":Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 613
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0b008a

    .line 616
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 617
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 618
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 621
    .local v0, "datePickerDialog":Landroid/app/DatePickerDialog;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    const v2, 0x7f0901dc

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .line 625
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I

    move-result v6

    const v9, 0xea60

    mul-int/2addr v6, v9

    int-to-long v10, v6

    .line 624
    invoke-static {v5, v10, v11}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    .line 622
    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v8

    .line 632
    .local v8, "datePicker":Landroid/widget/DatePicker;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 633
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 634
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 642
    .end local v0    # "datePickerDialog":Landroid/app/DatePickerDialog;
    .end local v3    # "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "datePicker":Landroid/widget/DatePicker;
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 639
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryDateText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090168

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryDateText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
