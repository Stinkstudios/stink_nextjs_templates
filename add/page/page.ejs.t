---
to: "<%= (pageType === 'dynamic') ? `src/pages/[${name}]/index.jsx` : `src/pages/${name}/index.jsx` %>"
unless_exists: true
---
import { useRef, forwardRef, useImperativeHandle } from 'react'
import CSS from './<%= name %>.module.scss'
export { getStaticProps<% if(pageType === "dynamic") { %>, getStaticPaths <% } %> } from './<%= name %>.gsp'
import { defaultPageTransition } from '~/helpers'

const <%= Name %> = ({ data }, ref) => {
	const $element = useRef()
	useImperativeHandle(ref, defaultPageTransition({ $element }), [])
	return (
		<div ref={$element} className={`${CSS['p-<%= name %> ']}`}>
			<div><%= name %> </div>
		</div>
	)
}

<%= Name %>.displayName = '<%= Name %> '
<%= Name %>.layout = 'default'

export default forwardRef(<%= Name %>)
