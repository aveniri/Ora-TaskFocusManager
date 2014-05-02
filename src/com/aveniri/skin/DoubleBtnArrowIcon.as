////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2005-2006 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package com.aveniri.skin
{

import flash.display.Graphics;

import mx.core.mx_internal;
import mx.skins.ProgrammaticSkin;

/**
 *  The skin for all the states of the icon in a PopUpButton.
 */
public class DoubleBtnArrowIcon extends ProgrammaticSkin
{
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor	 
     */
    public function DoubleBtnArrowIcon()
    {
        super();             
    }
    
    //--------------------------------------------------------------------------
    //
    //  Variables
    //
    //--------------------------------------------------------------------------

    /**
     *  @private
     */
    mx_internal var arrowColor:uint = 0x111111;    
	
    //--------------------------------------------------------------------------
    //
    //  Overridden properties
    //
    //--------------------------------------------------------------------------

	//----------------------------------
	//  measuredWidth
	//----------------------------------
	
    /**
     *  @private
     */    
    override public function get measuredWidth():Number
    {
        return 5;
    }
    
    //----------------------------------
	//  measuredHeight
    //----------------------------------
    
    /**
     *  @private
     */        
    override public function get measuredHeight():Number
    {
        return 5;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Overridden methods
    //
    //--------------------------------------------------------------------------

    /**
     *  @private
     */    
	override protected function updateDisplayList(w:Number, h:Number):void
    {
		super.updateDisplayList(w, h);
		
        var g:Graphics = graphics;
        g.clear();
		g.beginFill(mx_internal::arrowColor);

		h=3;
		w=3;
		
		g.moveTo( w - (3/2), h);
		g.lineTo( 0 - (3/2), 0);
		g.lineTo((w*2)-(3/2), 0);
		g.lineTo( w - (3/2), h);
		
		g.endFill();
    }
}

}
