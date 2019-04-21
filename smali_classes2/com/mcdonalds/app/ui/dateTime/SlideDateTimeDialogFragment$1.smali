.class Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;
.super Ljava/lang/Object;
.source "SlideDateTimeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$000()Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists for mOkButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$000()Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;->onDateTimeSet(Ljava/util/Date;)V

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->dismiss()V

    .line 221
    return-void
.end method
