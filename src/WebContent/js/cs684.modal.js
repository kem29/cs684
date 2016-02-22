
$.cs684.modal = {
	show: function(selector){
		$(selector).modal({
			opacity: 75,
			overlayCss: { backgroundColor: "#fff" },
			overlayClose: true,
			onOpen: function (dialog) {
				dialog.overlay.fadeIn($.cs684.fadeSpeed, function () {
					dialog.container.fadeIn($.cs684.fadeSpeed);
					dialog.data.fadeIn($.cs684.fadeSpeed);	 
				});
			},
			onClose: function (dialog) {
				dialog.data.fadeOut($.cs684.fadeSpeed, function () {
					dialog.container.hide($.cs684.fadeSpeed);
					$.modal.close();
				});
			}
		});
	}
};
