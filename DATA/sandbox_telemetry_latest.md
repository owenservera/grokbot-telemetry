# sandbox_telemetry_parse — 2026-10-16 03:08:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=27084 lines=100
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 54 |
| `memory_sample` | 37 |
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
| `chromeBrowserPssKb` | {'int': 37} |
| `chromeGpuPssKb` | {'int': 37} |
| `chromeOtherPssKb` | {'int': 37} |
| `chromeProcesses` | {'int': 37} |
| `chromeProfiles` | {'int': 37} |
| `chromeRendererMaxPssKb` | {'int': 37} |
| `chromeRendererPssKb` | {'int': 37} |
| `chromeRenderers` | {'int': 37} |
| `chromeTabs` | {'int': 37} |
| `chromeTabsProbedProfiles` | {'int': 37} |
| `chromeUtilityPssKb` | {'int': 37} |
| `desktopPssKb` | {'int': 37} |
| `hostPssKb` | {'int': 37} |
| `kind` | {'str': 37} |
| `memAvailableKb` | {'int': 37} |
| `memTotalKb` | {'int': 37} |
| `otherPssKb` | {'int': 37} |
| `processes` | {'int': 37} |
| `pssFallbackProcesses` | {'int': 37} |

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
| `cpuMillicores` | {'int': 51} |
| `display` | {'int': 54} |
| `kind` | {'str': 54} |
| `processes` | {'int': 54} |
| `pssKb` | {'int': 54} |
| `rendererMaxPssKb` | {'int': 54} |
| `renderers` | {'int': 54} |
| `tabs` | {'int': 53} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
