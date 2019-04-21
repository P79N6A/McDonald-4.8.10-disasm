.class Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->fixTimePickerBug18982()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 6
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const-string v0, "onValueChange"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$000(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    .line 184
    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    .line 185
    invoke-static {v2}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 183
    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 186
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$2;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0
.end method
