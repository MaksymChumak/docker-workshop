import React from "react"
import DemoComponent from "./components/DemoComponent/index"
import OtherComponent from "./components/OtherComponent/index"

function App() {

  return (
    <div>
      <h1>Today is sunny!</h1>
      <DemoComponent text="Hidden Component!" />
      <OtherComponent />
    </div>
  )
}

export default App
