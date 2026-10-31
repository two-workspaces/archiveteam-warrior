# Railway's template validator rejects images on atdr.meo.ws, so this mirrors the official
# Warrior image to ghcr. Nothing is changed: ArchiveTeam asks for unmodified Warriors, and the
# Warrior updates its own code and projects at runtime.
# upgrade: skip  (no tag list on atdr.meo.ws; rebuild with workflow_dispatch to pick up a new base)
FROM atdr.meo.ws/archiveteam/warrior-dockerfile:latest
