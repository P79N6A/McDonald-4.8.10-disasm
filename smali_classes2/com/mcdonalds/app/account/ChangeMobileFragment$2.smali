.class Lcom/mcdonalds/app/account/ChangeMobileFragment$2;
.super Ljava/lang/Object;
.source "ChangeMobileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeMobileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->access$100(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V

    .line 65
    return-void
.end method
