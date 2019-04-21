.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;
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
    .line 759
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isAmDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->isPmDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    .line 766
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->access$500(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 767
    .local v0, "amOrPm":I
    if-nez v0, :cond_3

    .line 768
    const/4 v0, 0x1

    .line 772
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->access$500(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    goto :goto_0

    .line 769
    :cond_3
    if-ne v0, v4, :cond_2

    .line 770
    const/4 v0, 0x0

    goto :goto_1
.end method
