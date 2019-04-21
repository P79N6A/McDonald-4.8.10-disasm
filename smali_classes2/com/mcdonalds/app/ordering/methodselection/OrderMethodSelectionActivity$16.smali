.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;


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
    .line 551
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(II)V
    .locals 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const-string v1, "onTimeChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;->val$calendar:Ljava/util/Calendar;

    invoke-static {v1, v2, p1, p2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$1000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$900(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setTitlebutton(Ljava/lang/String;)V

    .line 556
    return-void
.end method
