# sandbox_telemetry_parse — 2026-10-16 09:12:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=308552 lines=1153
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 756 |
| `memory_sample` | 388 |
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
| `chromeBrowserPssKb` | {'int': 388} |
| `chromeGpuPssKb` | {'int': 388} |
| `chromeOtherPssKb` | {'int': 388} |
| `chromeProcesses` | {'int': 388} |
| `chromeProfiles` | {'int': 388} |
| `chromeRendererMaxPssKb` | {'int': 388} |
| `chromeRendererPssKb` | {'int': 388} |
| `chromeRenderers` | {'int': 388} |
| `chromeTabs` | {'int': 388} |
| `chromeTabsProbedProfiles` | {'int': 388} |
| `chromeUtilityPssKb` | {'int': 388} |
| `desktopPssKb` | {'int': 388} |
| `hostPssKb` | {'int': 388} |
| `kind` | {'str': 388} |
| `memAvailableKb` | {'int': 388} |
| `memTotalKb` | {'int': 388} |
| `otherPssKb` | {'int': 388} |
| `processes` | {'int': 388} |
| `pssFallbackProcesses` | {'int': 388} |

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
| `cpuMillicores` | {'int': 753} |
| `display` | {'int': 756} |
| `kind` | {'str': 756} |
| `processes` | {'int': 756} |
| `pssKb` | {'int': 756} |
| `rendererMaxPssKb` | {'int': 756} |
| `renderers` | {'int': 756} |
| `tabs` | {'int': 755} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
