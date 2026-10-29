# sandbox_telemetry_parse — 2026-10-29 18:29:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=533556 lines=1420
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1069 |
| `chrome_profile_sample` | 207 |
| `egress_tunnel_connect` | 68 |
| `egress_tunnel_desktop` | 61 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1069} |
| `chromeGpuPssKb` | {'int': 1069} |
| `chromeOtherPssKb` | {'int': 1069} |
| `chromeProcesses` | {'int': 1069} |
| `chromeProfiles` | {'int': 1069} |
| `chromeRendererMaxPssKb` | {'int': 1069} |
| `chromeRendererPssKb` | {'int': 1069} |
| `chromeRenderers` | {'int': 1069} |
| `chromeTabs` | {'int': 1069} |
| `chromeTabsProbedProfiles` | {'int': 1069} |
| `chromeUtilityPssKb` | {'int': 1069} |
| `desktopPssKb` | {'int': 1069} |
| `hostPssKb` | {'int': 1069} |
| `kind` | {'str': 1069} |
| `memAvailableKb` | {'int': 1069} |
| `memTotalKb` | {'int': 1069} |
| `otherPssKb` | {'int': 1069} |
| `processes` | {'int': 1069} |
| `pssFallbackProcesses` | {'int': 1069} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 61} |
| `graceS` | {'int': 34} |
| `kind` | {'str': 61} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 203} |
| `display` | {'int': 207} |
| `kind` | {'str': 207} |
| `processes` | {'int': 207} |
| `pssKb` | {'int': 207} |
| `rendererMaxPssKb` | {'int': 207} |
| `renderers` | {'int': 207} |
| `tabs` | {'int': 207} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 68} |
| `failClosed` | {'bool': 68} |
| `kind` | {'str': 68} |
| `route` | {'str': 68} |
| `strict` | {'bool': 68} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
