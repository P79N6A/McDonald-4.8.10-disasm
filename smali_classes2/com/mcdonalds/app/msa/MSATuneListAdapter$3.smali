.class Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;
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

.field final synthetic val$vh:Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSATuneListAdapter;Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;->this$0:Lcom/mcdonalds/app/msa/MSATuneListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;->val$vh:Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$3;->val$vh:Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/msa/MSATuneListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    return-void
.end method
