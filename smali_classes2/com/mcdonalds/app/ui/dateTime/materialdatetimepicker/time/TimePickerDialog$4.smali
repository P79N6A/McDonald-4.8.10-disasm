.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->access$200(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->access$300(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->access$400(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;Z)V

    .line 735
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->notifyOnDateListener()V

    .line 736
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 737
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    goto :goto_0
.end method
