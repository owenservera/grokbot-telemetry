# sandbox_telemetry_parse — 2026-10-16 02:15:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1180504 lines=2638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2596 |
| `chrome_profile_sample` | 34 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2596} |
| `chromeGpuPssKb` | {'int': 2596} |
| `chromeOtherPssKb` | {'int': 2596} |
| `chromeProcesses` | {'int': 2596} |
| `chromeProfiles` | {'int': 2596} |
| `chromeRendererMaxPssKb` | {'int': 2596} |
| `chromeRendererPssKb` | {'int': 2596} |
| `chromeRenderers` | {'int': 2596} |
| `chromeTabs` | {'int': 2596} |
| `chromeTabsProbedProfiles` | {'int': 2596} |
| `chromeUtilityPssKb` | {'int': 2596} |
| `desktopPssKb` | {'int': 2596} |
| `hostPssKb` | {'int': 2596} |
| `kind` | {'str': 2596} |
| `memAvailableKb` | {'int': 2596} |
| `memTotalKb` | {'int': 2596} |
| `otherPssKb` | {'int': 2596} |
| `processes` | {'int': 2596} |
| `pssFallbackProcesses` | {'int': 2596} |

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
| `cpuMillicores` | {'int': 33} |
| `display` | {'int': 34} |
| `kind` | {'str': 34} |
| `processes` | {'int': 34} |
| `pssKb` | {'int': 34} |
| `rendererMaxPssKb` | {'int': 34} |
| `renderers` | {'int': 34} |
| `tabs` | {'int': 34} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
