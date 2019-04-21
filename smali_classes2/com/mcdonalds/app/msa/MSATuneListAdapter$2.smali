.class Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;
.super Ljava/lang/Object;
.source "MSATuneListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;ILcom/mcdonalds/app/msa/MSATuneItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    iput p2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    const/4 v5, 0x1

    const-string v2, "onCheckedChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    if-eqz p2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    iget v3, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$position:I

    invoke-static {v2, v3}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$402(Lcom/mcdonalds/app/msa/MSATuneListAdapter;I)I

    .line 138
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v2}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v2

    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    if-ne v2, v3, :cond_2

    .line 139
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getRandomTune()Lcom/mcdonalds/app/msa/MSATuneItem;

    move-result-object v1

    .line 140
    .local v1, "rand":Lcom/mcdonalds/app/msa/MSATuneItem;
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getMusicResId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/msa/MSATuneItem;->setMusicResId(I)V

    .line 149
    .end local v1    # "rand":Lcom/mcdonalds/app/msa/MSATuneItem;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v3}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v4}, Lcom/mcdonalds/app/msa/MSATuneItem;->getTuneId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 150
    invoke-virtual {v5}, Lcom/mcdonalds/app/msa/MSATuneItem;->getChoice()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/app/msa/MSASettings;->saveAlarmId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->notifyDataSetChanged()V

    .line 153
    return-void

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->val$item:Lcom/mcdonalds/app/msa/MSATuneItem;

    invoke-virtual {v2}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v2

    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v2, v3, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v2, "audio/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-static {v2}, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->access$300(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
