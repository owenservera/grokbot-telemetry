# sandbox_telemetry_parse — 2026-10-13 17:31:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1175404 lines=3051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2291 |
| `chrome_profile_sample` | 752 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2291} |
| `chromeGpuPssKb` | {'int': 2291} |
| `chromeOtherPssKb` | {'int': 2291} |
| `chromeProcesses` | {'int': 2291} |
| `chromeProfiles` | {'int': 2291} |
| `chromeRendererMaxPssKb` | {'int': 2291} |
| `chromeRendererPssKb` | {'int': 2291} |
| `chromeRenderers` | {'int': 2291} |
| `chromeTabs` | {'int': 2291} |
| `chromeTabsProbedProfiles` | {'int': 2291} |
| `chromeUtilityPssKb` | {'int': 2291} |
| `desktopPssKb` | {'int': 2291} |
| `hostPssKb` | {'int': 2291} |
| `kind` | {'str': 2291} |
| `memAvailableKb` | {'int': 2291} |
| `memTotalKb` | {'int': 2291} |
| `otherPssKb` | {'int': 2291} |
| `processes` | {'int': 2291} |
| `pssFallbackProcesses` | {'int': 2291} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 751} |
| `display` | {'int': 752} |
| `kind` | {'str': 752} |
| `processes` | {'int': 752} |
| `pssKb` | {'int': 752} |
| `rendererMaxPssKb` | {'int': 752} |
| `renderers` | {'int': 752} |
| `tabs` | {'int': 752} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
