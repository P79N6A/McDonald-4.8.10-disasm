.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$3;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    .line 357
    return-void
.end method