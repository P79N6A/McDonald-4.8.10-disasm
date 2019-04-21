.class Lcom/mcdonalds/app/msa/MsaMainFragment$4;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->showUsageDialog(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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

.field final synthetic val$nextAlarm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$nextAlarm:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$amPmView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$hourView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$minuteView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-static {v0, v8}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$100(Lcom/mcdonalds/app/msa/MsaMainFragment;Z)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MSASettings;->scheduleNextAlarm(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$nextAlarm:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$400(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;)V

    .line 193
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$500(Lcom/mcdonalds/app/msa/MsaMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$500(Lcom/mcdonalds/app/msa/MsaMainFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1, v7}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 198
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v0, "HOUR"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 199
    .local v4, "hour":I
    const-string v0, "MINUTE"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 200
    .local v5, "minute":I
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;->val$minuteView:Landroid/widget/TextView;

    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$200(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 201
    return-void
.end method
