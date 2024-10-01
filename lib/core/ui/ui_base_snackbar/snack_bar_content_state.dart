import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui_base_snackbar/snack_bar_content.dart';
import 'package:nuntium/core/ui/ui_base_snackbar/ui_base_snackbar.dart';

class SnackbarContentState extends State<SnackbarContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      _controller.reverse().then((value) {
        widget.overlayEntry.remove();
        UIBaseSnackbar.removeOverlay(widget.overlayEntry); 
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = widget.appTheme.colorTheme;
    return Positioned(
      top: widget.verticalOffset, // Устанавливаем вертикальное смещение
      left: MediaQuery.of(context).size.width * 0.1,
      right: MediaQuery.of(context).size.width * 0.1,
      child: Center(
        child: SlideTransition(
          position: _offsetAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(12),
              color: colorTheme.onSurface,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Text(
                  widget.text,
                  style: TextStyle(color: colorTheme.textOnAccent),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
