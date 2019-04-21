.class Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;
.super Ljava/lang/Object;
.source "MSATuneListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;->this$1:Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;->this$1:Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

    iget-object v0, v0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$202(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 97
    return-void
.end method
