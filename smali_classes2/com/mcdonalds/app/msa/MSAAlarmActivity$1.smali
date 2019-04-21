.class Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;
.super Ljava/lang/Object;
.source "MSAAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSAAlarmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$000(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$000(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->finish()V

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x83d60

    add-long/2addr v2, v4

    .line 100
    invoke-static {v0, v2, v3}, Lcom/mcdonalds/app/msa/MSASettings;->scheduleNotification(Landroid/content/Context;J)V

    .line 102
    return-void
.end method
