.class Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;
.super Ljava/lang/Object;
.source "MSALoggedInLandingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

.field final synthetic val$amPmView:Landroid/widget/TextView;

.field final synthetic val$hourView:Landroid/widget/TextView;

.field final synthetic val$minuteView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$amPmView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$hourView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$minuteView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$minuteView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->access$000(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;->val$minuteView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->access$100(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 97
    return-void
.end method
