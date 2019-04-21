.class Lcom/mcdonalds/app/msa/MsaEditFragment$4;
.super Ljava/lang/Object;
.source "MsaEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaEditFragment;->setupAlarmDays([Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

.field final synthetic val$day:Landroid/widget/TextView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaEditFragment;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    iput p2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$index:I

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$day:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onClick"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$300(Lcom/mcdonalds/app/msa/MsaEditFragment;)[Z

    move-result-object v2

    iget v3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$index:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$day:Landroid/widget/TextView;

    const v3, 0x7f020203

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$day:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$300(Lcom/mcdonalds/app/msa/MsaEditFragment;)[Z

    move-result-object v2

    iget v3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$index:I

    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$300(Lcom/mcdonalds/app/msa/MsaEditFragment;)[Z

    move-result-object v4

    iget v5, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$index:I

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    :goto_1
    aput-boolean v0, v2, v3

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$400(Lcom/mcdonalds/app/msa/MsaEditFragment;)V

    .line 171
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$day:Landroid/widget/TextView;

    const v3, -0x10b6ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 165
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$4;->val$day:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 167
    goto :goto_1
.end method
