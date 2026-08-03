export default function App() {
  return (
    <div className="grid min-h-screen w-full grid-cols-1 place-items-center gap-6 bg-[#fc8eac] dark:bg-[#b84f72] p-6 sm:grid-cols-2 lg:grid-cols-4">
      <img
        src="https://images.pexels.com/photos/247376/pexels-photo-247376.jpeg?auto=compress&cs=tinysrgb&w=1200"
        alt="Zebra"
        className="h-64 w-full max-w-sm rounded-lg object-cover shadow-retool-md"
      />
      <img
        src="https://images.pexels.com/photos/16878713/pexels-photo-16878713.jpeg?auto=compress&cs=tinysrgb&w=1200"
        alt="Hippopotamus"
        className="h-64 w-full max-w-sm rounded-lg object-cover shadow-retool-md"
      />
      <img
        src="https://images.pexels.com/photos/1793463/pexels-photo-1793463.jpeg?auto=compress&cs=tinysrgb&w=1200"
        alt="Flamingo"
        className="h-64 w-full max-w-sm rounded-lg object-cover shadow-retool-md"
      />
      <img
        src="https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg"
        alt="Moon"
        className="h-64 w-full max-w-sm rounded-lg object-cover shadow-retool-md"
      />
    </div>
  )
}
