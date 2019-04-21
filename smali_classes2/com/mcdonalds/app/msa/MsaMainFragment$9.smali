.class Lcom/mcdonalds/app/msa/MsaMainFragment$9;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

.field final synthetic val$amPmView:Landroid/widget/TextView;

.field final synthetic val$hourView:Landroid/widget/TextView;

.field final synthetic val$minuteView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$amPmView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$hourView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$minuteView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 301
    .local v6, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$minuteView:Landroid/widget/TextView;

    const/16 v4, 0xb

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    .line 302
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 301
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$200(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 303
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$9;->val$minuteView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$300(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 304
    return-void
.end method
