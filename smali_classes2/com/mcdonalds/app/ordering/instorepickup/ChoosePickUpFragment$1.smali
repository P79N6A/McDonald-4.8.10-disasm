.class Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment$1;
.super Ljava/lang/Object;
.source "ChoosePickUpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment$1;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment$1;->this$0:Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
