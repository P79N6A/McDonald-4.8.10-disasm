.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidSelection(I)Z
    .locals 6
    .param p1, "selection"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isValidSelection"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v4

    invoke-direct {v0, p1, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 200
    .local v0, "newTime":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$200(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setPM()V

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$200(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method
