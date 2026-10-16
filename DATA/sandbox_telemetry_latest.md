# sandbox_telemetry_parse — 2026-10-16 03:06:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=25482 lines=94
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 50 |
| `memory_sample` | 35 |
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
| `chromeBrowserPssKb` | {'int': 35} |
| `chromeGpuPssKb` | {'int': 35} |
| `chromeOtherPssKb` | {'int': 35} |
| `chromeProcesses` | {'int': 35} |
| `chromeProfiles` | {'int': 35} |
| `chromeRendererMaxPssKb` | {'int': 35} |
| `chromeRendererPssKb` | {'int': 35} |
| `chromeRenderers` | {'int': 35} |
| `chromeTabs` | {'int': 35} |
| `chromeTabsProbedProfiles` | {'int': 35} |
| `chromeUtilityPssKb` | {'int': 35} |
| `desktopPssKb` | {'int': 35} |
| `hostPssKb` | {'int': 35} |
| `kind` | {'str': 35} |
| `memAvailableKb` | {'int': 35} |
| `memTotalKb` | {'int': 35} |
| `otherPssKb` | {'int': 35} |
| `processes` | {'int': 35} |
| `pssFallbackProcesses` | {'int': 35} |

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
| `cpuMillicores` | {'int': 47} |
| `display` | {'int': 50} |
| `kind` | {'str': 50} |
| `processes` | {'int': 50} |
| `pssKb` | {'int': 50} |
| `rendererMaxPssKb` | {'int': 50} |
| `renderers` | {'int': 50} |
| `tabs` | {'int': 49} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
