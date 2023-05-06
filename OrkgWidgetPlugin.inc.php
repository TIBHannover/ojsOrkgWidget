<?php
import('lib.pkp.classes.plugins.BlockPlugin');

class OrkgWidgetPlugin extends BlockPlugin
{

	/**
	 * @return bool
	 */
	public function isSitePlugin()
	{
		return !Application::get()->getRequest()->getContext();
	}

	/*
	 * @return string
	 */
	public function getDisplayName()
	{
		return __('plugins.blocks.orkgBlock.title');
	}

	/*
	 * @return string
	 */
	public function getDescription()
	{
		return __('plugins.blocks.orkgBlock.desc');
	}

}
