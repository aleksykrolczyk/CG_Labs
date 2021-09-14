#include "CelestialBody.hpp"

#include <glm/gtc/matrix_transform.hpp>
#include <glm/trigonometric.hpp>

#include "core/helpers.hpp"
#include "core/Log.h"

const glm::vec3 X_AXIS = {1, 0 ,0};
const glm::vec3 Y_AXIS = {0, 1 ,0};
const glm::vec3 Z_AXIS = {0, 0 ,1};

CelestialBody::CelestialBody(bonobo::mesh_data const& shape,
                             GLuint const* program,
                             GLuint diffuse_texture_id)
{
	_body.node.set_geometry(shape);
	_body.node.add_texture("diffuse_texture", diffuse_texture_id, GL_TEXTURE_2D);
	_body.node.set_program(program);
}

glm::mat4 CelestialBody::render(std::chrono::microseconds elapsed_time,
                                glm::mat4 const& view_projection,
                                glm::mat4 const& parent_transform,
                                bool show_basis)
{
	// Convert the duration from microseconds to seconds.
	auto const elapsed_time_s = std::chrono::duration<float>(elapsed_time).count();
	// If a different ratio was needed, for example a duration in
	// milliseconds, the following would have been used:
	// auto const elapsed_time_ms = std::chrono::duration<float, std::milli>(elapsed_time).count();

    _body.spin.rotation_angle += _body.spin.speed * elapsed_time_s;
    _body.orbit.rotation_angle += _body.orbit.speed * elapsed_time_s;

	glm::mat4 world = parent_transform;

    glm::mat4 m_S = glm::scale(glm::mat4(1.0), _body.scale);

    glm::mat4 m_R1s = glm::rotate(glm::mat4(1.0), _body.spin.rotation_angle, Y_AXIS);
    glm::mat4 m_R2s = glm::rotate(glm::mat4(1.0), _body.spin.axial_tilt, Z_AXIS);

    glm::mat4 m_To = glm::translate(glm::mat4(1.0), glm::vec3(_body.orbit.radius, 0, 0));
    glm::mat4 m_R1o = glm::rotate(glm::mat4(1.0), _body.orbit.rotation_angle , Y_AXIS);
    glm::mat4 m_R2o = glm::rotate(glm::mat4(1.0), _body.orbit.inclination, Z_AXIS);
    glm::mat4 m_R3o = glm::rotate(glm::mat4(1.0), -1*_body.orbit.rotation_angle , Y_AXIS);

    world = world * m_R2o;
    world = world * m_R1o;
    world = world * m_To;
    world = world * m_R3o;

    //
    auto pt = world;
    pt = pt * m_R2s;
    //

    world = world * m_S;
    world = world * m_R1s;
    world = world * m_R2s;
    world = world * m_R1s;


	if (show_basis) {
        bonobo::renderBasis(1.0f, 2.0f, view_projection, world);
    }


	// Note: The second argument of `node::render()` is supposed to be the
	// parent transform of the node, not the whole world matrix, as the
	// node internally manages its local transforms. However in our case we
	// manage all the local transforms ourselves, so the internal transform
	// of the node is just the identity matrix and we can forward the whole
	// world matrix.

	_body.node.render(view_projection, world);

//    _ring.node.render(view_projection, pt * glm::rotate(glm::mat4(1.0), _body.spin.rotation_angle, X_AXIS));
    _ring.node.render(view_projection, pt * glm::rotate(glm::mat4(1.0), glm::half_pi<float>(), X_AXIS));

    for(auto & child : _children) {
        child->render(elapsed_time, view_projection, pt, show_basis);
    }

    return pt;

}

void CelestialBody::add_child(CelestialBody* child)
{
	_children.push_back(child);
}

std::vector<CelestialBody*> const& CelestialBody::get_children() const
{
	return _children;
}

void CelestialBody::set_orbit(OrbitConfiguration const& configuration)
{
	_body.orbit.radius = configuration.radius;
	_body.orbit.inclination = configuration.inclination;
	_body.orbit.speed = configuration.speed;
	_body.orbit.rotation_angle = 0.0f;
}

void CelestialBody::set_scale(glm::vec3 const& scale)
{
	_body.scale = scale;
}

void CelestialBody::set_spin(SpinConfiguration const& configuration)
{
	_body.spin.axial_tilt = configuration.axial_tilt;
	_body.spin.speed = configuration.speed;
	_body.spin.rotation_angle = 0.0f;
}

void CelestialBody::set_ring(bonobo::mesh_data const& shape,
                             GLuint const* program,
                             GLuint diffuse_texture_id,
                             glm::vec2 const& scale)
{
	_ring.node.set_geometry(shape);
	_ring.node.add_texture("diffuse_texture", diffuse_texture_id, GL_TEXTURE_2D);
	_ring.node.set_program(program);

	_ring.scale = scale;
}
