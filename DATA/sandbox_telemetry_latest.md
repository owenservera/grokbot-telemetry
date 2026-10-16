# sandbox_telemetry_parse — 2026-10-16 09:10:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=307749 lines=1150
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 754 |
| `memory_sample` | 387 |
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
| `chromeBrowserPssKb` | {'int': 387} |
| `chromeGpuPssKb` | {'int': 387} |
| `chromeOtherPssKb` | {'int': 387} |
| `chromeProcesses` | {'int': 387} |
| `chromeProfiles` | {'int': 387} |
| `chromeRendererMaxPssKb` | {'int': 387} |
| `chromeRendererPssKb` | {'int': 387} |
| `chromeRenderers` | {'int': 387} |
| `chromeTabs` | {'int': 387} |
| `chromeTabsProbedProfiles` | {'int': 387} |
| `chromeUtilityPssKb` | {'int': 387} |
| `desktopPssKb` | {'int': 387} |
| `hostPssKb` | {'int': 387} |
| `kind` | {'str': 387} |
| `memAvailableKb` | {'int': 387} |
| `memTotalKb` | {'int': 387} |
| `otherPssKb` | {'int': 387} |
| `processes` | {'int': 387} |
| `pssFallbackProcesses` | {'int': 387} |

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
| `cpuMillicores` | {'int': 751} |
| `display` | {'int': 754} |
| `kind` | {'str': 754} |
| `processes` | {'int': 754} |
| `pssKb` | {'int': 754} |
| `rendererMaxPssKb` | {'int': 754} |
| `renderers` | {'int': 754} |
| `tabs` | {'int': 753} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
