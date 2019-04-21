.class Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grantland/widget/AutofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutofitOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grantland/widget/AutofitHelper;


# direct methods
.method private constructor <init>(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grantland/widget/AutofitHelper;
    .param p2, "x1"    # Lme/grantland/widget/AutofitHelper$1;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-static {v0}, Lme/grantland/widget/AutofitHelper;->access$200(Lme/grantland/widget/AutofitHelper;)V

    .line 540
    return-void
.end method
