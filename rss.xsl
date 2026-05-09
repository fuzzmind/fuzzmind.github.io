<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" />
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title><xsl:value-of select="/rss/channel/title" /></title>
        <style>
          :root { color-scheme: dark; }
          body {
            margin: 0;
            background: #0a0a0a;
            color: #e7e5df;
            font: 16px/1.6 system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
          }
          main { max-width: 760px; margin: 0 auto; padding: 48px 20px; }
          h1 { font: 700 28px/1.2 ui-monospace, SFMono-Regular, Menlo, monospace; margin: 0 0 8px; }
          p { color: #a8a69e; margin: 0 0 28px; }
          a { color: #ff9f1c; text-decoration: none; }
          a:hover { text-decoration: underline; }
          ol { list-style: none; padding: 0; margin: 0; border-top: 1px solid #2c2c2c; }
          li { padding: 18px 0; border-bottom: 1px solid #2c2c2c; }
          h2 { font-size: 18px; line-height: 1.35; margin: 0 0 6px; }
          time { color: #77746c; font: 12px ui-monospace, SFMono-Regular, Menlo, monospace; text-transform: uppercase; }
        </style>
      </head>
      <body>
        <main>
          <h1><xsl:value-of select="/rss/channel/title" /></h1>
          <p>
            This is an RSS feed. Subscribe with a feed reader, or open
            <xsl:text> </xsl:text>
            <a>
              <xsl:attribute name="href"><xsl:value-of select="/rss/channel/link" /></xsl:attribute>
              the website
            </a>
            <xsl:text> </xsl:text>
            for the browsable archive.
          </p>
          <ol>
            <xsl:for-each select="/rss/channel/item">
              <li>
                <time><xsl:value-of select="pubDate" /></time>
                <h2>
                  <a>
                    <xsl:attribute name="href"><xsl:value-of select="link" /></xsl:attribute>
                    <xsl:value-of select="title" />
                  </a>
                </h2>
                <p><xsl:value-of select="description" /></p>
              </li>
            </xsl:for-each>
          </ol>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
