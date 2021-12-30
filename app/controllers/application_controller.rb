class ApplicationController < ActionController::API
  # Crea una encriptación para el payload de entrada
  def encode_token(payload)
    JWT.encode(payload, 'simpleStringToEncodeOrDecodeAPayload', { expiresIn: '1h' })
  end

  # Verifica que el header haya sido enviado desde la aplicación de frontend
  def auth_header
    request.headers['Authorization']
  end

  # Decodifica el token proveniente en el header de entrada y en caso de que no exista
  # se genera un error
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'simpleStringToEncodeOrDecodeAPayload', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # En caso de una auorización exitosa se setea la información del usuario en la variable
  # global @user
  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  # Verifica la información del usuario registrado
  def logged_in?
    !!logged_in_user
  end

  # Valida que el usuario esté autenticado
  def authorized
    render json: { msg: 'You must login in the app. Please use the frontend app.' },
      status: :unauthorized unless logged_in?
  end
end
