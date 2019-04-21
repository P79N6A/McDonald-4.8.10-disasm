.class Lcom/mcdonalds/app/customer/SignUpFragment$1;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$1;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodSelected(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const-string v0, "onMethodSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$1;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$000(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 211
    return-void
.end method
