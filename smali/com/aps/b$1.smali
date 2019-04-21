.class Lcom/aps/b$1;
.super Landroid/telephony/PhoneStateListener;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aps/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aps/b;


# direct methods
.method constructor <init>(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    .prologue
    .line 656
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->a(Lcom/aps/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v0, p1}, Lcom/aps/b;->a(Lcom/aps/b;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    .line 669
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/b;->a(Lcom/aps/b;J)J

    .line 670
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/b;->b(Lcom/aps/b;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .prologue
    .line 734
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 735
    packed-switch v0, :pswitch_data_0

    .line 749
    :goto_0
    return-void

    .line 737
    :pswitch_0
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->c(Lcom/aps/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 738
    iget-object v0, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    const/16 v1, -0x71

    invoke-static {v0, v1}, Lcom/aps/b;->b(Lcom/aps/b;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 2

    .prologue
    .line 685
    const/16 v0, -0x71

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->b(Lcom/aps/b;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 696
    :goto_0
    iget-object v1, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v1, v0}, Lcom/aps/b;->a(Lcom/aps/b;I)V

    .line 703
    :goto_1
    return-void

    .line 688
    :pswitch_0
    invoke-static {p1}, Lcom/aps/v;->a(I)I

    move-result v0

    goto :goto_0

    .line 691
    :pswitch_1
    invoke-static {p1}, Lcom/aps/v;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 711
    const/16 v0, -0x71

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->b(Lcom/aps/b;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/aps/b$1;->a:Lcom/aps/b;

    invoke-static {v1, v0}, Lcom/aps/b;->a(Lcom/aps/b;I)V

    .line 729
    :goto_1
    return-void

    .line 714
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/aps/v;->a(I)I

    move-result v0

    goto :goto_0

    .line 717
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
