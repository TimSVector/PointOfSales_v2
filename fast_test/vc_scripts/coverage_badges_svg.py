from enum import Enum
import os

FailPercentMin = 10.0


class coverageBadge():

    class __badgeColor(Enum):
        RED = "#ff0000"
        YELLOW = "#ff9d00"
        GREEN = "#97ca00"
        GRAY  = "#7f7f7f"

    def generateBadge(self, cov_type, covPct = None):
    
        if not covPct is None:
            covPct *= 100.0
            
        color = self.__getColor(covPct)
        if cov_type == "statement":
            badge = self.__genStatementBadge(covPct, color)
        if cov_type == "branch":
            badge = self.__genBranchBadge(covPct, color)
        if cov_type == "function":
            badge = self.__genFunctionBadge(covPct, color)
        if cov_type == "functioncall":
            badge = self.__genFunctionCallBadge(covPct, color)
        if cov_type == "mcdcpair":
            badge = self.__genMCDCBadge(covPct, color)

        # write badge 
        if not os.path.exists("badges"):
            os.makedirs("badges")
        
        with open("badges/" + cov_type + ".svg","w") as fd:
            fd.write(badge)

    def __getColor (self, covPct):
    
        if covPct is None:
            return self.__badgeColor.GRAY
        elif covPct >= self.partPct:
            return self.__badgeColor.GREEN
        elif covPct >= self.failPct:
            return self.__badgeColor.YELLOW
        else:
            return self.__badgeColor.RED

    def __genBadge(self, badgeTemplate, covPct, color):
        if covPct is None:
            pctStr = "-"
        else:
            pctStr = str(round(covPct,1)) + "%"
            
        return badgeTemplate.format(pctStr,pctStr,color.value,pctStr,pctStr)

    def __genStatementBadge(self, covPct = None, color = __badgeColor.GRAY):
        return self.__genBadge(self.__statement_badge, covPct, color)

    def __genBranchBadge(self, covPct = None, color = __badgeColor.GRAY):
        return self.__genBadge(self.__branch_badge, covPct, color)

    def __genMCDCBadge(self, covPct = None, color = __badgeColor.GRAY):
        return self.__genBadge(self.__mcdc_badge, covPct, color)

    def __genFunctionBadge(self, covPct = None, color = __badgeColor.GRAY):
        return self.__genBadge(self.__function_badge, covPct, color)

    def __genFunctionCallBadge(self, covPct = None, color = __badgeColor.GRAY):
        return self.__genBadge(self.__functioncall_badge, covPct, color)

    def __init__(self, passPct = 100.0, partPct = 90.0, failPct = 10.0):
    
        self.passPct = passPct;
        self.partPct = partPct;
        self.failPct = failPct;
        
        self.__statement_badge = """<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="120" height="20" role="img" aria-label="statement: {}">
    <title>Statement: {}</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
        <stop offset="1" stop-opacity=".1"/>
    </linearGradient>
    <clipPath id="r">
        <rect width="120" height="20" rx="3" fill="#fff"/>
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="67" height="20" fill="#555"/>
        <rect x="67" width="53" height="20" fill="{}"/>
        <rect width="120" height="20" fill="url(#s)"/>
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="345" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="570">statement</text>
        <text x="345" y="140" transform="scale(.1)" fill="#fff" textLength="570">statement</text>
        <text aria-hidden="true" x="925" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">{}</text>
        <text x="925" y="140" transform="scale(.1)" fill="#fff" textLength="430">{}</text>
    </g>
</svg>"""

        self.__mcdc_badge = """<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="120" height="20" role="img" aria-label="MC/DC Pairs {}">
    <title>MC/DC Pairs: {}</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
        <stop offset="1" stop-opacity=".1"/>
    </linearGradient>
    <clipPath id="r">
        <rect width="120" height="20" rx="3" fill="#fff"/>
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="67" height="20" fill="#555"/>
        <rect x="67" width="53" height="20" fill="{}"/>
        <rect width="120" height="20" fill="url(#s)"/>
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="345" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="570">mc/dc pair</text>
        <text x="345" y="140" transform="scale(.1)" fill="#fff" textLength="570">mc/dc pair</text>
        <text aria-hidden="true" x="925" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">()%</text>
        <text x="925" y="140" transform="scale(.1)" fill="#fff" textLength="430">{}</text>
    </g>
</svg>"""

        self.__branch_badge="""<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="120" height="20" role="img" aria-label="branch: {}">
    <title>Branch: {}</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
        <stop offset="1" stop-opacity=".1"/>
    </linearGradient>
    <clipPath id="r">
        <rect width="120" height="20" rx="3" fill="#fff"/>
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="67" height="20" fill="#555"/>
        <rect x="67" width="53" height="20" fill="{}"/>
        <rect width="120" height="20" fill="url(#s)"/>
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="345" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="400">branch</text>
        <text x="345" y="140" transform="scale(.1)" fill="#fff" textLength="400">branch</text>
        <text aria-hidden="true" x="925" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">()%</text>
        <text x="925" y="140" transform="scale(.1)" fill="#fff" textLength="430">{}</text>
    </g>
</svg>"""

        self.__function_badge="""<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="120" height="20" role="img" aria-label="function: {}">
    <title>Function: {}</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
        <stop offset="1" stop-opacity=".1"/>
    </linearGradient>
    <clipPath id="r">
        <rect width="120" height="20" rx="3" fill="#fff"/>
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="67" height="20" fill="#555"/>
        <rect x="67" width="53" height="20" fill="{}"/>
        <rect width="120" height="20" fill="url(#s)"/>
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="345" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="500">function</text>
        <text x="345" y="140" transform="scale(.1)" fill="#fff" textLength="500">function</text>
        <text aria-hidden="true" x="925" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">{}</text>
        <text x="925" y="140" transform="scale(.1)" fill="#fff" textLength="430">{}</text>
    </g>
</svg>"""

        self.__functioncall_badge="""<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="120" height="20" role="img" aria-label="function call: {}">
    <title>Function Call: {}</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
        <stop offset="1" stop-opacity=".1"/>
    </linearGradient>
    <clipPath id="r">
        <rect width="120" height="20" rx="3" fill="#fff"/>
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="70" height="20" fill="#555"/>
        <rect x="70" width="50" height="20" fill="{}"/>
        <rect width="120" height="20" fill="url(#s)"/>
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="345" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="600">function call</text>
        <text x="345" y="140" transform="scale(.1)" fill="#fff" textLength="600">function call</text>
        <text aria-hidden="true" x="940" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">{}</text>
        <text x="940" y="140" transform="scale(.1)" fill="#fff" textLength="430">{}</text>
    </g>
</svg>"""

        ## write out generic ones
        self.generateBadge("statement")
        self.generateBadge("branch")
        self.generateBadge("mcdcpair")
        self.generateBadge("function")
        self.generateBadge("functioncall")

if __name__ == '__main__':

    badges = coverageBadge()
