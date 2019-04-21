.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v2, "onTimeSet"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 687
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 688
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "AM"

    .line 689
    .local v0, "amPm":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, "hourFormat":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2502(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 691
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    const-string v3, "%s %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v5, v5, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 693
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 694
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1902(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 695
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    .line 696
    return-void

    .line 688
    .end local v0    # "amPm":Ljava/lang/String;
    .end local v1    # "hourFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v0, "PM"

    goto :goto_0
.end method
