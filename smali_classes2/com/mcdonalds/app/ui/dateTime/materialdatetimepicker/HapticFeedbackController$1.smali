.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->access$100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->access$200(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->access$002(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;Z)Z

    .line 37
    return-void
.end method
