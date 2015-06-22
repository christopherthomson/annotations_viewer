<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:xhtml="www.w3.org/1999/xhtml/"
    version="1.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Annotations viewer</title>
                <!-- Skeleton CSS framework -->
                <link rel="stylesheet" type="text/css" href="css/skeleton.css"/>
                <!-- Additional CSS -->
                <style>   
                    .annotation {
                        margin-top: 50px;
                    }
                    
                    p {
                        margin: 0;
                    }
                    
                    small {
                        color: grey;
                    }
                    
                </style>
                
            </head>
            <body>
                <div class="container">
                <h1>Annotations for <xsl:value-of select="annotationSet/publication/dc:title"/></h1>
                <strong><xsl:value-of select="annotationSet/publication/dc:creator"/></strong>
                <p><xsl:value-of select="annotationSet/publication/dc:identifier"/></p>
                <ul>
                <xsl:for-each select="annotationSet/annotation">
                    <div class="annotation">
                    <h5><xsl:value-of select="target/fragment/text"/></h5>
                    <small><xsl:value-of select="content/dc:date"/></small>
                    <p><xsl:value-of select="content/text"/></p>
                    </div>
                </xsl:for-each>
                </ul>
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>