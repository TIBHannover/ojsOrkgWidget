<div class="pkp_block block_orkgwidget">
    {if $publication && $publication->getData('pub-id::doi')}
		<div class="content">

			<!-- ORKG HTML Snippet value data -->
            {$doi="https://doi.org/`$publication->getData('pub-id::doi')`"}

			<div class="orkg-widget" data-doi="{$doi}"></div>
			<script>
				(function (w, d, s, o, f, js, fjs) {
					w['ORKG-Widget'] = o;
					w[o] =
						w[o] ||
						function () {
							(w[o].q = w[o].q || []).push(arguments);
						};
					(js = d.createElement(s)), (fjs = d.getElementsByTagName(s)[0]);
					js.id = o;
					js.src = f;
					js.async = 1;
					fjs.parentNode.insertBefore(js, fjs);
				})(window, document, 'script', 'orkgw', '{{$baseUrl}}/plugins/blocks/orkgWidget/orkgw/widget.js');
				orkgw('paper', { language: 'en' });
			</script>
			<!-- END ORKG HTML Snippet-->
		</div>
    {/if}
</div>
