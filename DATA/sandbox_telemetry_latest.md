# sandbox_telemetry_parse — 2026-10-16 09:28:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=318992 lines=1192
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 782 |
| `memory_sample` | 401 |
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
| `chromeBrowserPssKb` | {'int': 401} |
| `chromeGpuPssKb` | {'int': 401} |
| `chromeOtherPssKb` | {'int': 401} |
| `chromeProcesses` | {'int': 401} |
| `chromeProfiles` | {'int': 401} |
| `chromeRendererMaxPssKb` | {'int': 401} |
| `chromeRendererPssKb` | {'int': 401} |
| `chromeRenderers` | {'int': 401} |
| `chromeTabs` | {'int': 401} |
| `chromeTabsProbedProfiles` | {'int': 401} |
| `chromeUtilityPssKb` | {'int': 401} |
| `desktopPssKb` | {'int': 401} |
| `hostPssKb` | {'int': 401} |
| `kind` | {'str': 401} |
| `memAvailableKb` | {'int': 401} |
| `memTotalKb` | {'int': 401} |
| `otherPssKb` | {'int': 401} |
| `processes` | {'int': 401} |
| `pssFallbackProcesses` | {'int': 401} |

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
| `cpuMillicores` | {'int': 779} |
| `display` | {'int': 782} |
| `kind` | {'str': 782} |
| `processes` | {'int': 782} |
| `pssKb` | {'int': 782} |
| `rendererMaxPssKb` | {'int': 782} |
| `renderers` | {'int': 782} |
| `tabs` | {'int': 781} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
