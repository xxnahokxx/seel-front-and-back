import React from 'react'

const ProjectCard = () => {
    return (
        <div className="flex flex-row justify-between">
            <div>
                <h2 className="font-bold text-lg">Proyecto 1</h2>
                <p className="text-sm text-gray-500">Status: En desarrollo</p>
            </div>
            <div className="flex flex-row gap-4">
                <p>botón 1</p>
                <p>botón 2</p>
                <p>botón 3</p>

            </div>
        </div>
    )
}

export default ProjectCard
