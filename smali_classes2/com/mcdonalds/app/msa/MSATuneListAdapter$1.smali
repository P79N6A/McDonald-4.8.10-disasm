.class Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;
.super Ljava/lang/Object;
.source "MSATuneListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSATuneListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

.field final synthetic val$item:Lcom/mcdonalds/app/msa/MSATuneItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$100(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$200(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$200(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$200(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$300(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 85
    invoke-virtual {v2}, Lcom/mcdonalds/app/msa/MSATuneItem;->getMusicResId()I

    move-result v2

    .line 84
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 86
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$202(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 89
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 90
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$100(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1$1;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;Landroid/media/MediaPlayer;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_1
    return-void
.end method
