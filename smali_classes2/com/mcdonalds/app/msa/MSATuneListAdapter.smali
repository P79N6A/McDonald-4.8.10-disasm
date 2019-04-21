.class public Lcom/mcdonalds/app/msa/MSATuneListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MSATuneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/app/msa/MSATuneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/msa/MSATuneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPositionChecked:I

.field private mSelectMusicDisabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/msa/MSATuneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/msa/MSATuneItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mPositionChecked:I

    .line 40
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p3, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mItems:Ljava/util/List;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/os/Handler;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSATuneListAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSATuneListAdapter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSATuneListAdapter"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)Landroid/app/Activity;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSATuneListAdapter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/msa/MSATuneListAdapter;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSATuneListAdapter"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iput p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mPositionChecked:I

    return p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "root":Landroid/view/View;
    if-nez p2, :cond_2

    .line 49
    iget-object v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040141

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;

    .line 55
    .local v4, "viewHolder":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    if-nez v4, :cond_0

    .line 56
    new-instance v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;

    .end local v4    # "viewHolder":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    invoke-direct {v4, p0, v9}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;)V

    .line 57
    .restart local v4    # "viewHolder":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    const v5, 0x7f110466

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTunePreplay:Landroid/widget/ImageView;

    .line 58
    const v5, 0x7f110467

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    .line 59
    const v5, 0x7f110469

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 60
    const v5, 0x7f110465

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    .line 61
    const v5, 0x7f110468

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_0
    move-object v3, v4

    .line 65
    .local v3, "vh":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 68
    .local v1, "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    if-eq v5, v8, :cond_1

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v5, v8, :cond_3

    .line 71
    :cond_1
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTunePreplay:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTunePreplay:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_1
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v5, v8, :cond_5

    .line 106
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getInstruction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getChoice()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 110
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .end local v0    # "filename":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v5, v8, :cond_7

    iget-boolean v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mSelectMusicDisabled:Z

    if-eqz v5, :cond_7

    .line 127
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 131
    :goto_3
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object v8, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mPositionChecked:I

    if-ne p1, v5, :cond_8

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;

    invoke-direct {v8, p0, p1, v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$2;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;ILcom/mcdonalds/app/msa/MSATuneItem;)V

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v5, v8, :cond_9

    iget-boolean v5, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mSelectMusicDisabled:Z

    if-eqz v5, :cond_9

    .line 160
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    :goto_5
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    new-instance v6, Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;

    invoke-direct {v6, p0, v3}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {v2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v5, "getView"

    invoke-static {p0, v5}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-static {v9, v5}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v2

    .line 51
    .end local v1    # "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    .end local v3    # "vh":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    .end local v4    # "viewHolder":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    :cond_2
    move-object v2, p2

    goto/16 :goto_0

    .line 74
    .restart local v1    # "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    .restart local v3    # "vh":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    .restart local v4    # "viewHolder":Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
    :cond_3
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTunePreplay:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTunePreplay:Landroid/widget/ImageView;

    new-instance v8, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

    invoke-direct {v8, p0, v1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneItem;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 113
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 115
    .end local v0    # "filename":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    sget v8, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_APP:I

    if-ne v5, v8, :cond_6

    .line 116
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getChoice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 120
    :cond_6
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine1:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getInstruction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mTuneLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 129
    :cond_7
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_8
    move v5, v7

    .line 132
    goto/16 :goto_4

    .line 162
    :cond_9
    iget-object v5, v3, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "onDestroy"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 179
    iput-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 181
    :cond_0
    return-void
.end method
