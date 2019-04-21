.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    .line 750
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$400(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$300(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 754
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->access$400(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 755
    return-void
.end method
