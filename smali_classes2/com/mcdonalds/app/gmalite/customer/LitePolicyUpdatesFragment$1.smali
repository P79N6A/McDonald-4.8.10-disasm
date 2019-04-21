.class Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "LitePolicyUpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->configurePolicyUpdatesString(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    .line 121
    return-void
.end method
