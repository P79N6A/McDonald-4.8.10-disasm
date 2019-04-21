.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1237
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 1272
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1273
    :goto_0
    return-void

    .line 1272
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
