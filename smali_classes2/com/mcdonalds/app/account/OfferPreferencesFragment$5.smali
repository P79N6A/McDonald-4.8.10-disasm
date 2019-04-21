.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;->showDisableDialog(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$1000(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)V

    .line 357
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MSASettings;->clearAlarm(Landroid/content/Context;)V

    .line 358
    return-void
.end method
