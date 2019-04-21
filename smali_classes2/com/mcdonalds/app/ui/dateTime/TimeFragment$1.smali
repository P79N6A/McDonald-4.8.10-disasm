.class Lcom/mcdonalds/app/ui/dateTime/TimeFragment$1;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 114
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const-string v0, "onTimeChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->access$000(Lcom/mcdonalds/app/ui/dateTime/TimeFragment;)Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 120
    return-void
.end method
