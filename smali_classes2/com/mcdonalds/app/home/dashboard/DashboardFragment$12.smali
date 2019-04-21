.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onClickPromoLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;->val$link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;)V

    .line 920
    return-void
.end method
