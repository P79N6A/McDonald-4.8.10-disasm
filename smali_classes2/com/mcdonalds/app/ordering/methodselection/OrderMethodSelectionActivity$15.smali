.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->showDeliveryTimePicker(Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

.field final synthetic val$calendar:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;III)V
    .locals 7
    .param p1, "view"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "onTimeSet"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$900(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->val$calendar:Ljava/util/Calendar;

    invoke-static {v1, v2, p2, p3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$1000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 540
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 541
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAsapDelivery(Z)V

    .line 542
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setScheduledDeliveryDate(Ljava/util/Date;)V

    .line 544
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$902(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$1100(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
