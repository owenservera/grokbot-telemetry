# sandbox_telemetry_parse — 2026-10-16 22:07:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=868035 lines=3244
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2150 |
| `memory_sample` | 1085 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1085} |
| `chromeGpuPssKb` | {'int': 1085} |
| `chromeOtherPssKb` | {'int': 1085} |
| `chromeProcesses` | {'int': 1085} |
| `chromeProfiles` | {'int': 1085} |
| `chromeRendererMaxPssKb` | {'int': 1085} |
| `chromeRendererPssKb` | {'int': 1085} |
| `chromeRenderers` | {'int': 1085} |
| `chromeTabs` | {'int': 1085} |
| `chromeTabsProbedProfiles` | {'int': 1085} |
| `chromeUtilityPssKb` | {'int': 1085} |
| `desktopPssKb` | {'int': 1085} |
| `hostPssKb` | {'int': 1085} |
| `kind` | {'str': 1085} |
| `memAvailableKb` | {'int': 1085} |
| `memTotalKb` | {'int': 1085} |
| `otherPssKb` | {'int': 1085} |
| `processes` | {'int': 1085} |
| `pssFallbackProcesses` | {'int': 1085} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 2147} |
| `display` | {'int': 2150} |
| `kind` | {'str': 2150} |
| `processes` | {'int': 2150} |
| `pssKb` | {'int': 2150} |
| `rendererMaxPssKb` | {'int': 2150} |
| `renderers` | {'int': 2150} |
| `tabs` | {'int': 2149} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
