# sandbox_telemetry_parse — 2026-10-16 18:55:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=740351 lines=2767
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1832 |
| `memory_sample` | 926 |
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
| `chromeBrowserPssKb` | {'int': 926} |
| `chromeGpuPssKb` | {'int': 926} |
| `chromeOtherPssKb` | {'int': 926} |
| `chromeProcesses` | {'int': 926} |
| `chromeProfiles` | {'int': 926} |
| `chromeRendererMaxPssKb` | {'int': 926} |
| `chromeRendererPssKb` | {'int': 926} |
| `chromeRenderers` | {'int': 926} |
| `chromeTabs` | {'int': 926} |
| `chromeTabsProbedProfiles` | {'int': 926} |
| `chromeUtilityPssKb` | {'int': 926} |
| `desktopPssKb` | {'int': 926} |
| `hostPssKb` | {'int': 926} |
| `kind` | {'str': 926} |
| `memAvailableKb` | {'int': 926} |
| `memTotalKb` | {'int': 926} |
| `otherPssKb` | {'int': 926} |
| `processes` | {'int': 926} |
| `pssFallbackProcesses` | {'int': 926} |

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
| `cpuMillicores` | {'int': 1829} |
| `display` | {'int': 1832} |
| `kind` | {'str': 1832} |
| `processes` | {'int': 1832} |
| `pssKb` | {'int': 1832} |
| `rendererMaxPssKb` | {'int': 1832} |
| `renderers` | {'int': 1832} |
| `tabs` | {'int': 1831} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
