.class Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grantland/widget/AutofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutofitTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grantland/widget/AutofitHelper;


# direct methods
.method private constructor <init>(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grantland/widget/AutofitHelper;
    .param p2, "x1"    # Lme/grantland/widget/AutofitHelper$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 532
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 522
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-static {v0}, Lme/grantland/widget/AutofitHelper;->access$200(Lme/grantland/widget/AutofitHelper;)V

    .line 527
    return-void
.end method
