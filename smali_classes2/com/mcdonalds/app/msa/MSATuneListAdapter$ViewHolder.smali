.class Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MSATuneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/msa/MSATuneListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBackground:Landroid/view/View;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mTuneLine1:Landroid/widget/TextView;

.field public mTuneLine2:Landroid/widget/TextView;

.field public mTunePreplay:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;
    .param p2, "x1"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;)V

    return-void
.end method
