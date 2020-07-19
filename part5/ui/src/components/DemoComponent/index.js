import React, { useState } from "react"
import "./index.css"

function DemoComponent(props) {
  const [display, setDisplay] = useState(false)

  return (
    <div>
      <button onClick={() => setDisplay(!display)}>Click me!</button>
      { display ? <h1>{ props.text }</h1> : null }
    </div>
  )
}

export default DemoComponent
