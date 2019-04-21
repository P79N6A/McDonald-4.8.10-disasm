.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v1, "onDateSet"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 599
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 600
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 601
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3, p4}, Ljava/util/Date;-><init>(III)V

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2102(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 603
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryDateText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/mcdonalds/app/util/UIUtils;->getDayOfMonthSuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->val$schedDeliveryDateText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 606
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2002(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 607
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    .line 608
    return-void
.end method
