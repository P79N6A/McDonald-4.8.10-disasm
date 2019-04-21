.class Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$4;
.super Ljava/lang/Object;
.source "ChooseSearchMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$4;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

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

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$4;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    const-string v2, "config_select"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    return-void
.end method
