package com.company.assembleegameclient.util 
{
    import mx.core.*;
    
    [Embed(source="_ip.dat", mimeType="application/octet-stream")]
    public class _ip extends mx.core.ByteArrayAsset
    {
        public function _ip()
        {
            super();

        }
    }
}
